.class public Lcom/anythink/basead/ui/PlayerView;
.super Lcom/anythink/basead/ui/animplayerview/BasePlayerView;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/anythink/basead/ui/PlayerView$a;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field private A:Ljava/lang/String;

.field private B:Ljava/lang/String;

.field private C:I

.field private D:I

.field private E:I

.field private F:I

.field private G:I

.field private H:Z

.field private I:Z

.field private J:Z

.field private K:Z

.field private L:Z

.field private M:Z

.field private N:Z

.field private O:Z

.field private P:Landroid/os/Handler;

.field private Q:Z

.field private R:Ljava/lang/Thread;

.field private S:Z

.field private T:Z

.field private U:Landroid/view/View;

.field private V:Lcom/anythink/expressad/exoplayer/w$c;

.field private W:Lcom/anythink/expressad/exoplayer/l/g;

.field public a:I

.field private final aa:J

.field private ab:J

.field public b:I

.field public c:I

.field public d:Z

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field private g:Lcom/anythink/expressad/exoplayer/ad;

.field private y:Lcom/anythink/expressad/exoplayer/h/s;

.field private z:Landroid/view/TextureView;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/anythink/basead/ui/PlayerView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/anythink/basead/ui/PlayerView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2}, Lcom/anythink/basead/ui/animplayerview/BasePlayerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string p1, ""

    iput-object p1, p0, Lcom/anythink/basead/ui/PlayerView;->A:Ljava/lang/String;

    iput-object p1, p0, Lcom/anythink/basead/ui/PlayerView;->B:Ljava/lang/String;

    const/4 p2, -0x1

    iput p2, p0, Lcom/anythink/basead/ui/PlayerView;->C:I

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/anythink/basead/ui/PlayerView;->K:Z

    iput-boolean p2, p0, Lcom/anythink/basead/ui/PlayerView;->L:Z

    iput-boolean p2, p0, Lcom/anythink/basead/ui/PlayerView;->M:Z

    iput-boolean p2, p0, Lcom/anythink/basead/ui/PlayerView;->N:Z

    iput-boolean p2, p0, Lcom/anythink/basead/ui/PlayerView;->O:Z

    iput p2, p0, Lcom/anythink/basead/ui/PlayerView;->b:I

    iput p2, p0, Lcom/anythink/basead/ui/PlayerView;->c:I

    iput-boolean p2, p0, Lcom/anythink/basead/ui/PlayerView;->d:Z

    iput-object p1, p0, Lcom/anythink/basead/ui/PlayerView;->e:Ljava/lang/String;

    iput-object p1, p0, Lcom/anythink/basead/ui/PlayerView;->f:Ljava/lang/String;

    const-wide/16 p1, 0x1388

    iput-wide p1, p0, Lcom/anythink/basead/ui/PlayerView;->aa:J

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lcom/anythink/basead/ui/PlayerView;->ab:J

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->setSaveEnabled(Z)V

    new-instance p1, Lcom/anythink/basead/ui/PlayerView$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/anythink/basead/ui/PlayerView$1;-><init>(Lcom/anythink/basead/ui/PlayerView;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/anythink/basead/ui/PlayerView;->P:Landroid/os/Handler;

    const/high16 p1, -0x1000000

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    return-void
.end method

.method public static synthetic A(Lcom/anythink/basead/ui/PlayerView;)Lcom/anythink/basead/ui/animplayerview/BasePlayerView$a;
    .locals 0

    iget-object p0, p0, Lcom/anythink/basead/ui/animplayerview/BasePlayerView;->v:Lcom/anythink/basead/ui/animplayerview/BasePlayerView$a;

    return-object p0
.end method

.method public static synthetic B(Lcom/anythink/basead/ui/PlayerView;)Lcom/anythink/basead/ui/animplayerview/BasePlayerView$a;
    .locals 0

    iget-object p0, p0, Lcom/anythink/basead/ui/animplayerview/BasePlayerView;->v:Lcom/anythink/basead/ui/animplayerview/BasePlayerView$a;

    return-object p0
.end method

.method public static synthetic C(Lcom/anythink/basead/ui/PlayerView;)Lcom/anythink/basead/ui/animplayerview/BasePlayerView$a;
    .locals 0

    iget-object p0, p0, Lcom/anythink/basead/ui/animplayerview/BasePlayerView;->v:Lcom/anythink/basead/ui/animplayerview/BasePlayerView$a;

    return-object p0
.end method

.method public static synthetic D(Lcom/anythink/basead/ui/PlayerView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/anythink/basead/ui/PlayerView;->K:Z

    return p0
.end method

.method public static synthetic E(Lcom/anythink/basead/ui/PlayerView;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/anythink/basead/ui/PlayerView;->P:Landroid/os/Handler;

    return-object p0
.end method

.method public static synthetic F(Lcom/anythink/basead/ui/PlayerView;)Lcom/anythink/expressad/exoplayer/ad;
    .locals 0

    iget-object p0, p0, Lcom/anythink/basead/ui/PlayerView;->g:Lcom/anythink/expressad/exoplayer/ad;

    return-object p0
.end method

.method public static synthetic G(Lcom/anythink/basead/ui/PlayerView;)J
    .locals 2

    iget-wide v0, p0, Lcom/anythink/basead/ui/PlayerView;->ab:J

    return-wide v0
.end method

.method public static synthetic H(Lcom/anythink/basead/ui/PlayerView;)Lcom/anythink/basead/ui/animplayerview/BasePlayerView$a;
    .locals 0

    iget-object p0, p0, Lcom/anythink/basead/ui/animplayerview/BasePlayerView;->v:Lcom/anythink/basead/ui/animplayerview/BasePlayerView$a;

    return-object p0
.end method

.method public static synthetic I(Lcom/anythink/basead/ui/PlayerView;)V
    .locals 0

    invoke-direct {p0}, Lcom/anythink/basead/ui/PlayerView;->d()V

    return-void
.end method

.method public static synthetic J(Lcom/anythink/basead/ui/PlayerView;)V
    .locals 1

    iget-object v0, p0, Lcom/anythink/basead/ui/animplayerview/BasePlayerView;->v:Lcom/anythink/basead/ui/animplayerview/BasePlayerView$a;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/anythink/basead/ui/animplayerview/BasePlayerView$a;->g()V

    :cond_0
    iget-object v0, p0, Lcom/anythink/basead/ui/PlayerView;->g:Lcom/anythink/expressad/exoplayer/ad;

    iget-object p0, p0, Lcom/anythink/basead/ui/PlayerView;->y:Lcom/anythink/expressad/exoplayer/h/s;

    invoke-virtual {v0, p0}, Lcom/anythink/expressad/exoplayer/ad;->a(Lcom/anythink/expressad/exoplayer/h/s;)V

    return-void
.end method

.method public static synthetic K(Lcom/anythink/basead/ui/PlayerView;)Lcom/anythink/basead/ui/animplayerview/BasePlayerView$a;
    .locals 0

    iget-object p0, p0, Lcom/anythink/basead/ui/animplayerview/BasePlayerView;->v:Lcom/anythink/basead/ui/animplayerview/BasePlayerView$a;

    return-object p0
.end method

.method public static synthetic L(Lcom/anythink/basead/ui/PlayerView;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/anythink/basead/ui/PlayerView;->B:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic M(Lcom/anythink/basead/ui/PlayerView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/anythink/basead/ui/PlayerView;->N:Z

    return p0
.end method

.method public static synthetic N(Lcom/anythink/basead/ui/PlayerView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/anythink/basead/ui/PlayerView;->O:Z

    return p0
.end method

.method public static synthetic O(Lcom/anythink/basead/ui/PlayerView;)V
    .locals 1

    iget-object p0, p0, Lcom/anythink/basead/ui/PlayerView;->U:Landroid/view/View;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public static synthetic P(Lcom/anythink/basead/ui/PlayerView;)Z
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/anythink/basead/ui/PlayerView;->N:Z

    return v0
.end method

.method public static synthetic Q(Lcom/anythink/basead/ui/PlayerView;)Lcom/anythink/basead/ui/animplayerview/BasePlayerView$a;
    .locals 0

    iget-object p0, p0, Lcom/anythink/basead/ui/animplayerview/BasePlayerView;->v:Lcom/anythink/basead/ui/animplayerview/BasePlayerView$a;

    return-object p0
.end method

.method public static synthetic R(Lcom/anythink/basead/ui/PlayerView;)I
    .locals 0

    iget p0, p0, Lcom/anythink/basead/ui/PlayerView;->D:I

    return p0
.end method

.method public static synthetic S(Lcom/anythink/basead/ui/PlayerView;)Lcom/anythink/basead/ui/animplayerview/BasePlayerView$a;
    .locals 0

    iget-object p0, p0, Lcom/anythink/basead/ui/animplayerview/BasePlayerView;->v:Lcom/anythink/basead/ui/animplayerview/BasePlayerView$a;

    return-object p0
.end method

.method public static synthetic T(Lcom/anythink/basead/ui/PlayerView;)Z
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/anythink/basead/ui/PlayerView;->M:Z

    return v0
.end method

.method public static synthetic U(Lcom/anythink/basead/ui/PlayerView;)Lcom/anythink/basead/ui/animplayerview/BasePlayerView$a;
    .locals 0

    iget-object p0, p0, Lcom/anythink/basead/ui/animplayerview/BasePlayerView;->v:Lcom/anythink/basead/ui/animplayerview/BasePlayerView$a;

    return-object p0
.end method

.method public static synthetic V(Lcom/anythink/basead/ui/PlayerView;)Lcom/anythink/basead/ui/animplayerview/BasePlayerView$a;
    .locals 0

    iget-object p0, p0, Lcom/anythink/basead/ui/animplayerview/BasePlayerView;->v:Lcom/anythink/basead/ui/animplayerview/BasePlayerView$a;

    return-object p0
.end method

.method public static synthetic W(Lcom/anythink/basead/ui/PlayerView;)V
    .locals 0

    invoke-virtual {p0}, Lcom/anythink/basead/ui/animplayerview/BasePlayerView;->i()V

    return-void
.end method

.method public static synthetic X(Lcom/anythink/basead/ui/PlayerView;)Landroid/view/TextureView;
    .locals 0

    iget-object p0, p0, Lcom/anythink/basead/ui/PlayerView;->z:Landroid/view/TextureView;

    return-object p0
.end method

.method public static synthetic a(Lcom/anythink/basead/ui/PlayerView;I)I
    .locals 0

    iput p1, p0, Lcom/anythink/basead/ui/PlayerView;->C:I

    return p1
.end method

.method public static synthetic a(Lcom/anythink/basead/ui/PlayerView;J)J
    .locals 0

    iput-wide p1, p0, Lcom/anythink/basead/ui/PlayerView;->ab:J

    return-wide p1
.end method

.method public static synthetic a(Lcom/anythink/basead/ui/PlayerView;)Lcom/anythink/basead/ui/animplayerview/BasePlayerView$a;
    .locals 0

    iget-object p0, p0, Lcom/anythink/basead/ui/animplayerview/BasePlayerView;->v:Lcom/anythink/basead/ui/animplayerview/BasePlayerView$a;

    return-object p0
.end method

.method private a()V
    .locals 2

    iget-object v0, p0, Lcom/anythink/basead/ui/PlayerView;->U:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public static synthetic a(Lcom/anythink/basead/ui/PlayerView;Lcom/anythink/basead/c/e;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/anythink/basead/ui/animplayerview/BasePlayerView;->a(Lcom/anythink/basead/c/e;)V

    return-void
.end method

.method private a(Ljava/lang/String;Z)V
    .locals 7

    const-string v0, "40002"

    :goto_0
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/anythink/basead/ui/PlayerView;->g:Lcom/anythink/expressad/exoplayer/ad;

    if-nez v1, :cond_0

    const-string v1, "Player show fail with some internal error"

    invoke-static {v0, v1}, Lcom/anythink/basead/c/f;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/basead/c/e;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/anythink/basead/ui/animplayerview/BasePlayerView;->a(Lcom/anythink/basead/c/e;)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/anythink/basead/ui/PlayerView;->A:Ljava/lang/String;

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/anythink/basead/ui/PlayerView;->d:Z

    iget-object v1, p0, Lcom/anythink/basead/ui/PlayerView;->B:Ljava/lang/String;

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/anythink/basead/ui/PlayerView;->c:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez v1, :cond_2

    const-string v1, ",lastRecycleCheckDownloadedFileSize:"

    const-string v2, ",maxVideoCacheSize:"

    const-string v3, ",readyRate:"

    const-string v4, "AdxPlayer videoUrl:"

    const-string v5, "Video Play Fail:Play Network Url"

    if-eqz p2, :cond_1

    :try_start_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/anythink/basead/ui/PlayerView;->c:I

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/anythink/core/common/a/l;->a()Lcom/anythink/core/common/a/l;

    move-result-object v2

    invoke-virtual {v2}, Lcom/anythink/core/common/a/l;->c()J

    move-result-wide v2

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/anythink/core/common/a/l;->a()Lcom/anythink/core/common/a/l;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/core/common/a/l;->d()J

    move-result-wide v1

    invoke-virtual {v6, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ",isChaoDi:true,ChaoDiThrowableMsg:"

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/anythink/basead/ui/PlayerView;->e:Ljava/lang/String;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v2

    invoke-virtual {v2}, Lcom/anythink/core/common/b/n;->q()Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-static {v5, v1, v2}, Lcom/anythink/core/common/n/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/anythink/basead/ui/PlayerView;->c:I

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/anythink/core/common/a/l;->a()Lcom/anythink/core/common/a/l;

    move-result-object v2

    invoke-virtual {v2}, Lcom/anythink/core/common/a/l;->c()J

    move-result-wide v2

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/anythink/core/common/a/l;->a()Lcom/anythink/core/common/a/l;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/core/common/a/l;->d()J

    move-result-wide v1

    invoke-virtual {v6, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v2

    invoke-virtual {v2}, Lcom/anythink/core/common/b/n;->q()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_2
    :goto_2
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "http"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v3, "Anythink_ExoPlayer"

    if-eqz v2, :cond_3

    :try_start_2
    new-instance v2, Lcom/anythink/expressad/exoplayer/h/o$c;

    new-instance v4, Lcom/anythink/expressad/exoplayer/j/q;

    invoke-direct {v4, v3}, Lcom/anythink/expressad/exoplayer/j/q;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v4}, Lcom/anythink/expressad/exoplayer/h/o$c;-><init>(Lcom/anythink/expressad/exoplayer/j/h$a;)V

    invoke-virtual {v2, v1}, Lcom/anythink/expressad/exoplayer/h/o$c;->a(Landroid/net/Uri;)Lcom/anythink/expressad/exoplayer/h/o;

    move-result-object v1

    :goto_3
    iput-object v1, p0, Lcom/anythink/basead/ui/PlayerView;->y:Lcom/anythink/expressad/exoplayer/h/s;

    goto :goto_4

    :cond_3
    new-instance v2, Lcom/anythink/expressad/exoplayer/h/o$c;

    new-instance v4, Lcom/anythink/expressad/exoplayer/j/o;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5, v3}, Lcom/anythink/expressad/exoplayer/j/o;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-direct {v2, v4}, Lcom/anythink/expressad/exoplayer/h/o$c;-><init>(Lcom/anythink/expressad/exoplayer/j/h$a;)V

    invoke-virtual {v2, v1}, Lcom/anythink/expressad/exoplayer/h/o$c;->a(Landroid/net/Uri;)Lcom/anythink/expressad/exoplayer/h/o;

    move-result-object v1

    goto :goto_3

    :goto_4
    iget-object v1, p0, Lcom/anythink/basead/ui/PlayerView;->g:Lcom/anythink/expressad/exoplayer/ad;

    iget-object v2, p0, Lcom/anythink/basead/ui/PlayerView;->z:Landroid/view/TextureView;

    invoke-virtual {v1, v2}, Lcom/anythink/expressad/exoplayer/ad;->a(Landroid/view/TextureView;)V

    iget-object v1, p0, Lcom/anythink/basead/ui/PlayerView;->g:Lcom/anythink/expressad/exoplayer/ad;

    iget-object v2, p0, Lcom/anythink/basead/ui/PlayerView;->y:Lcom/anythink/expressad/exoplayer/h/s;

    invoke-virtual {v1, v2}, Lcom/anythink/expressad/exoplayer/ad;->a(Lcom/anythink/expressad/exoplayer/h/s;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_4
    return-void

    :catchall_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    iget-object v2, p0, Lcom/anythink/basead/ui/PlayerView;->B:Ljava/lang/String;

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_6

    if-eqz p2, :cond_5

    goto :goto_5

    :cond_5
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/anythink/basead/ui/PlayerView;->e:Ljava/lang/String;

    iget-object p1, p0, Lcom/anythink/basead/ui/PlayerView;->B:Ljava/lang/String;

    const/4 p2, 0x1

    goto/16 :goto_0

    :cond_6
    :goto_5
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/anythink/basead/c/f;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/basead/c/e;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/anythink/basead/ui/animplayerview/BasePlayerView;->a(Lcom/anythink/basead/c/e;)V

    return-void
.end method

.method private a(Z)V
    .locals 4

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/anythink/basead/ui/PlayerView;->A:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/anythink/basead/ui/PlayerView;->B:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    iput-boolean v2, p0, Lcom/anythink/basead/ui/PlayerView;->S:Z

    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    const-string p1, "40002"

    const-string v0, "Video file and net url is empty!"

    invoke-static {p1, v0}, Lcom/anythink/basead/c/f;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/basead/c/e;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/anythink/basead/ui/animplayerview/BasePlayerView;->a(Lcom/anythink/basead/c/e;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/anythink/basead/ui/PlayerView;->z:Landroid/view/TextureView;

    if-nez v0, :cond_2

    new-instance v0, Landroid/view/TextureView;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/anythink/basead/ui/PlayerView;->z:Landroid/view/TextureView;

    invoke-virtual {v0, v2}, Landroid/view/TextureView;->setKeepScreenOn(Z)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0xd

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    iget-object v2, p0, Lcom/anythink/basead/ui/PlayerView;->z:Landroid/view/TextureView;

    invoke-virtual {p0, v2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    iget-object v0, p0, Lcom/anythink/basead/ui/PlayerView;->g:Lcom/anythink/expressad/exoplayer/ad;

    if-nez v0, :cond_5

    new-instance v0, Lcom/anythink/expressad/exoplayer/f;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/anythink/expressad/exoplayer/f;-><init>(Landroid/content/Context;)V

    new-instance v2, Lcom/anythink/expressad/exoplayer/i/c;

    invoke-direct {v2}, Lcom/anythink/expressad/exoplayer/i/c;-><init>()V

    new-instance v3, Lcom/anythink/expressad/exoplayer/d;

    invoke-direct {v3}, Lcom/anythink/expressad/exoplayer/d;-><init>()V

    invoke-static {v0, v2, v3}, Lcom/anythink/expressad/exoplayer/i;->a(Lcom/anythink/expressad/exoplayer/ab;Lcom/anythink/expressad/exoplayer/i/h;Lcom/anythink/expressad/exoplayer/p;)Lcom/anythink/expressad/exoplayer/ad;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/basead/ui/PlayerView;->g:Lcom/anythink/expressad/exoplayer/ad;

    new-instance v0, Lcom/anythink/basead/ui/PlayerView$4;

    invoke-direct {v0, p0}, Lcom/anythink/basead/ui/PlayerView$4;-><init>(Lcom/anythink/basead/ui/PlayerView;)V

    iput-object v0, p0, Lcom/anythink/basead/ui/PlayerView;->V:Lcom/anythink/expressad/exoplayer/w$c;

    iget-object v2, p0, Lcom/anythink/basead/ui/PlayerView;->g:Lcom/anythink/expressad/exoplayer/ad;

    invoke-virtual {v2, v0}, Lcom/anythink/expressad/exoplayer/ad;->a(Lcom/anythink/expressad/exoplayer/w$c;)V

    new-instance v0, Lcom/anythink/basead/ui/PlayerView$5;

    invoke-direct {v0, p0}, Lcom/anythink/basead/ui/PlayerView$5;-><init>(Lcom/anythink/basead/ui/PlayerView;)V

    iput-object v0, p0, Lcom/anythink/basead/ui/PlayerView;->W:Lcom/anythink/expressad/exoplayer/l/g;

    iget-object v2, p0, Lcom/anythink/basead/ui/PlayerView;->g:Lcom/anythink/expressad/exoplayer/ad;

    invoke-virtual {v2, v0}, Lcom/anythink/expressad/exoplayer/ad;->a(Lcom/anythink/expressad/exoplayer/l/g;)V

    iget-object v0, p0, Lcom/anythink/basead/ui/PlayerView;->g:Lcom/anythink/expressad/exoplayer/ad;

    iget-boolean v2, p0, Lcom/anythink/basead/ui/PlayerView;->Q:Z

    if-eqz v2, :cond_3

    const/4 v2, 0x0

    goto :goto_1

    :cond_3
    const/high16 v2, 0x3f800000    # 1.0f

    :goto_1
    invoke-virtual {v0, v2}, Lcom/anythink/expressad/exoplayer/ad;->a(F)V

    iget-object v0, p0, Lcom/anythink/basead/ui/PlayerView;->g:Lcom/anythink/expressad/exoplayer/ad;

    invoke-virtual {v0, p1}, Lcom/anythink/expressad/exoplayer/ad;->a(Z)V

    new-instance p1, Ljava/io/File;

    iget-object v0, p0, Lcom/anythink/basead/ui/PlayerView;->A:Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/anythink/basead/ui/PlayerView;->A:Ljava/lang/String;

    goto :goto_2

    :cond_4
    iget-object p1, p0, Lcom/anythink/basead/ui/PlayerView;->B:Ljava/lang/String;

    :goto_2
    invoke-direct {p0, p1, v1}, Lcom/anythink/basead/ui/PlayerView;->a(Ljava/lang/String;Z)V

    :cond_5
    new-instance p1, Lcom/anythink/basead/ui/PlayerView$2;

    invoke-direct {p1, p0}, Lcom/anythink/basead/ui/PlayerView$2;-><init>(Lcom/anythink/basead/ui/PlayerView;)V

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public static synthetic a(Lcom/anythink/basead/ui/PlayerView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/anythink/basead/ui/PlayerView;->T:Z

    return p1
.end method

.method public static synthetic b(Lcom/anythink/basead/ui/PlayerView;I)I
    .locals 0

    iput p1, p0, Lcom/anythink/basead/ui/PlayerView;->D:I

    return p1
.end method

.method private b()V
    .locals 2

    iget-object v0, p0, Lcom/anythink/basead/ui/PlayerView;->U:Landroid/view/View;

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public static synthetic b(Lcom/anythink/basead/ui/PlayerView;Lcom/anythink/basead/c/e;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/anythink/basead/ui/animplayerview/BasePlayerView;->a(Lcom/anythink/basead/c/e;)V

    return-void
.end method

.method private b(Z)V
    .locals 3

    iget-object v0, p0, Lcom/anythink/basead/ui/PlayerView;->g:Lcom/anythink/expressad/exoplayer/ad;

    if-nez v0, :cond_2

    new-instance v0, Lcom/anythink/expressad/exoplayer/f;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/anythink/expressad/exoplayer/f;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/anythink/expressad/exoplayer/i/c;

    invoke-direct {v1}, Lcom/anythink/expressad/exoplayer/i/c;-><init>()V

    new-instance v2, Lcom/anythink/expressad/exoplayer/d;

    invoke-direct {v2}, Lcom/anythink/expressad/exoplayer/d;-><init>()V

    invoke-static {v0, v1, v2}, Lcom/anythink/expressad/exoplayer/i;->a(Lcom/anythink/expressad/exoplayer/ab;Lcom/anythink/expressad/exoplayer/i/h;Lcom/anythink/expressad/exoplayer/p;)Lcom/anythink/expressad/exoplayer/ad;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/basead/ui/PlayerView;->g:Lcom/anythink/expressad/exoplayer/ad;

    new-instance v0, Lcom/anythink/basead/ui/PlayerView$4;

    invoke-direct {v0, p0}, Lcom/anythink/basead/ui/PlayerView$4;-><init>(Lcom/anythink/basead/ui/PlayerView;)V

    iput-object v0, p0, Lcom/anythink/basead/ui/PlayerView;->V:Lcom/anythink/expressad/exoplayer/w$c;

    iget-object v1, p0, Lcom/anythink/basead/ui/PlayerView;->g:Lcom/anythink/expressad/exoplayer/ad;

    invoke-virtual {v1, v0}, Lcom/anythink/expressad/exoplayer/ad;->a(Lcom/anythink/expressad/exoplayer/w$c;)V

    new-instance v0, Lcom/anythink/basead/ui/PlayerView$5;

    invoke-direct {v0, p0}, Lcom/anythink/basead/ui/PlayerView$5;-><init>(Lcom/anythink/basead/ui/PlayerView;)V

    iput-object v0, p0, Lcom/anythink/basead/ui/PlayerView;->W:Lcom/anythink/expressad/exoplayer/l/g;

    iget-object v1, p0, Lcom/anythink/basead/ui/PlayerView;->g:Lcom/anythink/expressad/exoplayer/ad;

    invoke-virtual {v1, v0}, Lcom/anythink/expressad/exoplayer/ad;->a(Lcom/anythink/expressad/exoplayer/l/g;)V

    iget-object v0, p0, Lcom/anythink/basead/ui/PlayerView;->g:Lcom/anythink/expressad/exoplayer/ad;

    iget-boolean v1, p0, Lcom/anythink/basead/ui/PlayerView;->Q:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    :goto_0
    invoke-virtual {v0, v1}, Lcom/anythink/expressad/exoplayer/ad;->a(F)V

    iget-object v0, p0, Lcom/anythink/basead/ui/PlayerView;->g:Lcom/anythink/expressad/exoplayer/ad;

    invoke-virtual {v0, p1}, Lcom/anythink/expressad/exoplayer/ad;->a(Z)V

    new-instance p1, Ljava/io/File;

    iget-object v0, p0, Lcom/anythink/basead/ui/PlayerView;->A:Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/anythink/basead/ui/PlayerView;->A:Ljava/lang/String;

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/anythink/basead/ui/PlayerView;->B:Ljava/lang/String;

    :goto_1
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/anythink/basead/ui/PlayerView;->a(Ljava/lang/String;Z)V

    :cond_2
    return-void
.end method

.method public static synthetic b(Lcom/anythink/basead/ui/PlayerView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/anythink/basead/ui/PlayerView;->L:Z

    return p0
.end method

.method public static synthetic b(Lcom/anythink/basead/ui/PlayerView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/anythink/basead/ui/PlayerView;->O:Z

    return p1
.end method

.method public static synthetic c(Lcom/anythink/basead/ui/PlayerView;I)I
    .locals 0

    iput p1, p0, Lcom/anythink/basead/ui/PlayerView;->E:I

    return p1
.end method

.method private c()V
    .locals 2

    iget-object v0, p0, Lcom/anythink/basead/ui/PlayerView;->R:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/anythink/basead/ui/PlayerView;->K:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/anythink/basead/ui/PlayerView;->ab:J

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/anythink/basead/ui/PlayerView$3;

    invoke-direct {v1, p0}, Lcom/anythink/basead/ui/PlayerView$3;-><init>(Lcom/anythink/basead/ui/PlayerView;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/anythink/basead/ui/PlayerView;->R:Ljava/lang/Thread;

    const-string v1, "anythink_type_player_progress"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/anythink/basead/ui/PlayerView;->R:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public static synthetic c(Lcom/anythink/basead/ui/PlayerView;Lcom/anythink/basead/c/e;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/anythink/basead/ui/animplayerview/BasePlayerView;->a(Lcom/anythink/basead/c/e;)V

    return-void
.end method

.method public static synthetic c(Lcom/anythink/basead/ui/PlayerView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/anythink/basead/ui/PlayerView;->M:Z

    return p0
.end method

.method public static synthetic d(Lcom/anythink/basead/ui/PlayerView;I)I
    .locals 0

    iput p1, p0, Lcom/anythink/basead/ui/PlayerView;->F:I

    return p1
.end method

.method private d()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/anythink/basead/ui/PlayerView;->K:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/anythink/basead/ui/PlayerView;->R:Ljava/lang/Thread;

    return-void
.end method

.method public static synthetic d(Lcom/anythink/basead/ui/PlayerView;)Z
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/anythink/basead/ui/PlayerView;->L:Z

    return v0
.end method

.method public static synthetic e(Lcom/anythink/basead/ui/PlayerView;I)I
    .locals 0

    iput p1, p0, Lcom/anythink/basead/ui/PlayerView;->G:I

    return p1
.end method

.method public static synthetic e(Lcom/anythink/basead/ui/PlayerView;)Lcom/anythink/basead/ui/animplayerview/BasePlayerView$a;
    .locals 0

    iget-object p0, p0, Lcom/anythink/basead/ui/animplayerview/BasePlayerView;->v:Lcom/anythink/basead/ui/animplayerview/BasePlayerView$a;

    return-object p0
.end method

.method private e()Z
    .locals 2

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/anythink/basead/ui/PlayerView;->A:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/anythink/basead/ui/PlayerView;->B:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iput-boolean v1, p0, Lcom/anythink/basead/ui/PlayerView;->S:Z

    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static synthetic f(Lcom/anythink/basead/ui/PlayerView;)Lcom/anythink/basead/ui/animplayerview/BasePlayerView$a;
    .locals 0

    iget-object p0, p0, Lcom/anythink/basead/ui/animplayerview/BasePlayerView;->v:Lcom/anythink/basead/ui/animplayerview/BasePlayerView$a;

    return-object p0
.end method

.method private f()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/anythink/basead/ui/PlayerView;->A:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/anythink/basead/ui/PlayerView;->A:Ljava/lang/String;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/anythink/basead/ui/PlayerView;->B:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic g(Lcom/anythink/basead/ui/PlayerView;)Lcom/anythink/basead/ui/animplayerview/BasePlayerView$a;
    .locals 0

    iget-object p0, p0, Lcom/anythink/basead/ui/animplayerview/BasePlayerView;->v:Lcom/anythink/basead/ui/animplayerview/BasePlayerView$a;

    return-object p0
.end method

.method private g()V
    .locals 2

    iget-object v0, p0, Lcom/anythink/basead/ui/PlayerView;->z:Landroid/view/TextureView;

    if-nez v0, :cond_0

    new-instance v0, Landroid/view/TextureView;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/anythink/basead/ui/PlayerView;->z:Landroid/view/TextureView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setKeepScreenOn(Z)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    iget-object v1, p0, Lcom/anythink/basead/ui/PlayerView;->z:Landroid/view/TextureView;

    invoke-virtual {p0, v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method public static synthetic h(Lcom/anythink/basead/ui/PlayerView;)I
    .locals 0

    iget p0, p0, Lcom/anythink/basead/ui/PlayerView;->C:I

    return p0
.end method

.method private h()V
    .locals 2

    iget-object v0, p0, Lcom/anythink/basead/ui/animplayerview/BasePlayerView;->v:Lcom/anythink/basead/ui/animplayerview/BasePlayerView$a;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/anythink/basead/ui/animplayerview/BasePlayerView$a;->g()V

    :cond_0
    iget-object v0, p0, Lcom/anythink/basead/ui/PlayerView;->g:Lcom/anythink/expressad/exoplayer/ad;

    iget-object v1, p0, Lcom/anythink/basead/ui/PlayerView;->y:Lcom/anythink/expressad/exoplayer/h/s;

    invoke-virtual {v0, v1}, Lcom/anythink/expressad/exoplayer/ad;->a(Lcom/anythink/expressad/exoplayer/h/s;)V

    return-void
.end method

.method public static synthetic i(Lcom/anythink/basead/ui/PlayerView;)Lcom/anythink/basead/ui/animplayerview/BasePlayerView$a;
    .locals 0

    iget-object p0, p0, Lcom/anythink/basead/ui/animplayerview/BasePlayerView;->v:Lcom/anythink/basead/ui/animplayerview/BasePlayerView$a;

    return-object p0
.end method

.method public static synthetic j(Lcom/anythink/basead/ui/PlayerView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/anythink/basead/ui/PlayerView;->H:Z

    return p0
.end method

.method public static synthetic k(Lcom/anythink/basead/ui/PlayerView;)I
    .locals 0

    iget p0, p0, Lcom/anythink/basead/ui/PlayerView;->E:I

    return p0
.end method

.method public static synthetic l(Lcom/anythink/basead/ui/PlayerView;)Z
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/anythink/basead/ui/PlayerView;->H:Z

    return v0
.end method

.method public static synthetic m(Lcom/anythink/basead/ui/PlayerView;)Lcom/anythink/basead/ui/animplayerview/BasePlayerView$a;
    .locals 0

    iget-object p0, p0, Lcom/anythink/basead/ui/animplayerview/BasePlayerView;->v:Lcom/anythink/basead/ui/animplayerview/BasePlayerView$a;

    return-object p0
.end method

.method public static synthetic n(Lcom/anythink/basead/ui/PlayerView;)Lcom/anythink/basead/ui/animplayerview/BasePlayerView$a;
    .locals 0

    iget-object p0, p0, Lcom/anythink/basead/ui/animplayerview/BasePlayerView;->v:Lcom/anythink/basead/ui/animplayerview/BasePlayerView$a;

    return-object p0
.end method

.method public static synthetic o(Lcom/anythink/basead/ui/PlayerView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/anythink/basead/ui/PlayerView;->I:Z

    return p0
.end method

.method public static synthetic p(Lcom/anythink/basead/ui/PlayerView;)I
    .locals 0

    iget p0, p0, Lcom/anythink/basead/ui/PlayerView;->F:I

    return p0
.end method

.method public static synthetic q(Lcom/anythink/basead/ui/PlayerView;)Z
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/anythink/basead/ui/PlayerView;->I:Z

    return v0
.end method

.method public static synthetic r(Lcom/anythink/basead/ui/PlayerView;)Lcom/anythink/basead/ui/animplayerview/BasePlayerView$a;
    .locals 0

    iget-object p0, p0, Lcom/anythink/basead/ui/animplayerview/BasePlayerView;->v:Lcom/anythink/basead/ui/animplayerview/BasePlayerView$a;

    return-object p0
.end method

.method public static synthetic s(Lcom/anythink/basead/ui/PlayerView;)Lcom/anythink/basead/ui/animplayerview/BasePlayerView$a;
    .locals 0

    iget-object p0, p0, Lcom/anythink/basead/ui/animplayerview/BasePlayerView;->v:Lcom/anythink/basead/ui/animplayerview/BasePlayerView$a;

    return-object p0
.end method

.method public static synthetic t(Lcom/anythink/basead/ui/PlayerView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/anythink/basead/ui/PlayerView;->J:Z

    return p0
.end method

.method public static synthetic u(Lcom/anythink/basead/ui/PlayerView;)I
    .locals 0

    iget p0, p0, Lcom/anythink/basead/ui/PlayerView;->G:I

    return p0
.end method

.method public static synthetic v(Lcom/anythink/basead/ui/PlayerView;)Z
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/anythink/basead/ui/PlayerView;->J:Z

    return v0
.end method

.method public static synthetic w(Lcom/anythink/basead/ui/PlayerView;)Lcom/anythink/basead/ui/animplayerview/BasePlayerView$a;
    .locals 0

    iget-object p0, p0, Lcom/anythink/basead/ui/animplayerview/BasePlayerView;->v:Lcom/anythink/basead/ui/animplayerview/BasePlayerView$a;

    return-object p0
.end method

.method public static synthetic x(Lcom/anythink/basead/ui/PlayerView;)Lcom/anythink/basead/ui/animplayerview/BasePlayerView$a;
    .locals 0

    iget-object p0, p0, Lcom/anythink/basead/ui/animplayerview/BasePlayerView;->v:Lcom/anythink/basead/ui/animplayerview/BasePlayerView$a;

    return-object p0
.end method

.method public static synthetic y(Lcom/anythink/basead/ui/PlayerView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/anythink/basead/ui/PlayerView;->T:Z

    return p0
.end method

.method public static synthetic z(Lcom/anythink/basead/ui/PlayerView;)Lcom/anythink/basead/ui/animplayerview/BasePlayerView$a;
    .locals 0

    iget-object p0, p0, Lcom/anythink/basead/ui/animplayerview/BasePlayerView;->v:Lcom/anythink/basead/ui/animplayerview/BasePlayerView$a;

    return-object p0
.end method


# virtual methods
.method public autoFitVideoSize(IILandroid/view/View;)V
    .locals 3

    invoke-virtual {p3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    int-to-float p1, p1

    int-to-float v0, v0

    div-float v0, p1, v0

    int-to-float p2, p2

    int-to-float v1, v1

    div-float v1, p2, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    div-float/2addr p1, v0

    float-to-double v1, p1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int p1, v1

    div-float/2addr p2, v0

    float-to-double v0, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int p2, v0

    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iput p2, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    invoke-virtual {p3, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public getCurrentPosition()J
    .locals 2

    iget v0, p0, Lcom/anythink/basead/ui/PlayerView;->C:I

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getVideoLength()J
    .locals 2

    iget-object v0, p0, Lcom/anythink/basead/ui/PlayerView;->g:Lcom/anythink/expressad/exoplayer/ad;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/anythink/expressad/exoplayer/ad;->s()J

    move-result-wide v0

    return-wide v0

    :cond_0
    iget v0, p0, Lcom/anythink/basead/ui/PlayerView;->D:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public hasVideo()Z
    .locals 1

    iget-boolean v0, p0, Lcom/anythink/basead/ui/PlayerView;->S:Z

    return v0
.end method

.method public init(Lcom/anythink/core/common/f/l;Lcom/anythink/core/common/f/m;ZLjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/anythink/core/common/f/l;",
            "Lcom/anythink/core/common/f/m;",
            "Z",
            "Ljava/util/List<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    invoke-super {p0, p1, p2, p3, p4}, Lcom/anythink/basead/ui/animplayerview/BasePlayerView;->init(Lcom/anythink/core/common/f/l;Lcom/anythink/core/common/f/m;ZLjava/util/List;)V

    invoke-virtual {p0, p3}, Lcom/anythink/basead/ui/PlayerView;->initMuteStatus(Z)V

    invoke-virtual {p1}, Lcom/anythink/core/common/f/l;->o()Lcom/anythink/core/common/f/n;

    move-result-object p2

    invoke-virtual {p2}, Lcom/anythink/core/common/f/n;->W()I

    move-result p2

    invoke-virtual {p1}, Lcom/anythink/core/common/f/l;->o()Lcom/anythink/core/common/f/n;

    move-result-object p3

    invoke-virtual {p3}, Lcom/anythink/core/common/f/n;->X()I

    move-result p3

    invoke-virtual {p0, p2, p3}, Lcom/anythink/basead/ui/PlayerView;->setVideoRateConfig(II)V

    invoke-virtual {p1}, Lcom/anythink/core/common/f/l;->B()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/anythink/basead/ui/PlayerView;->load(Ljava/lang/String;Z)V

    return-void
.end method

.method public initMuteStatus(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/anythink/basead/ui/PlayerView;->Q:Z

    return-void
.end method

.method public isComplete()Z
    .locals 1

    iget-boolean v0, p0, Lcom/anythink/basead/ui/PlayerView;->M:Z

    return v0
.end method

.method public isMute()Z
    .locals 1

    iget-boolean v0, p0, Lcom/anythink/basead/ui/PlayerView;->Q:Z

    return v0
.end method

.method public isPlaying()Z
    .locals 1

    iget-object v0, p0, Lcom/anythink/basead/ui/PlayerView;->g:Lcom/anythink/expressad/exoplayer/ad;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/anythink/expressad/exoplayer/ad;->J()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public load(Ljava/lang/String;Z)V
    .locals 3

    iput-object p1, p0, Lcom/anythink/basead/ui/PlayerView;->B:Ljava/lang/String;

    invoke-static {}, Lcom/anythink/basead/a/e;->a()Lcom/anythink/basead/a/e;

    const/4 v0, 0x4

    invoke-static {v0, p1}, Lcom/anythink/basead/a/e;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/anythink/basead/ui/PlayerView;->A:Ljava/lang/String;

    new-instance p1, Ljava/io/File;

    iget-object v0, p0, Lcom/anythink/basead/ui/PlayerView;->A:Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/anythink/basead/ui/PlayerView;->B:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    iput-boolean v1, p0, Lcom/anythink/basead/ui/PlayerView;->S:Z

    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    const-string p1, "40002"

    const-string p2, "Video file and net url is empty!"

    invoke-static {p1, p2}, Lcom/anythink/basead/c/f;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/basead/c/e;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/anythink/basead/ui/animplayerview/BasePlayerView;->a(Lcom/anythink/basead/c/e;)V

    return-void

    :cond_1
    iget-object p1, p0, Lcom/anythink/basead/ui/PlayerView;->z:Landroid/view/TextureView;

    if-nez p1, :cond_2

    new-instance p1, Landroid/view/TextureView;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p1, v2}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/anythink/basead/ui/PlayerView;->z:Landroid/view/TextureView;

    invoke-virtual {p1, v1}, Landroid/view/TextureView;->setKeepScreenOn(Z)V

    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {p1, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xd

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    iget-object v1, p0, Lcom/anythink/basead/ui/PlayerView;->z:Landroid/view/TextureView;

    invoke-virtual {p0, v1, p1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    iget-object p1, p0, Lcom/anythink/basead/ui/PlayerView;->g:Lcom/anythink/expressad/exoplayer/ad;

    if-nez p1, :cond_5

    new-instance p1, Lcom/anythink/expressad/exoplayer/f;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p1, v1}, Lcom/anythink/expressad/exoplayer/f;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/anythink/expressad/exoplayer/i/c;

    invoke-direct {v1}, Lcom/anythink/expressad/exoplayer/i/c;-><init>()V

    new-instance v2, Lcom/anythink/expressad/exoplayer/d;

    invoke-direct {v2}, Lcom/anythink/expressad/exoplayer/d;-><init>()V

    invoke-static {p1, v1, v2}, Lcom/anythink/expressad/exoplayer/i;->a(Lcom/anythink/expressad/exoplayer/ab;Lcom/anythink/expressad/exoplayer/i/h;Lcom/anythink/expressad/exoplayer/p;)Lcom/anythink/expressad/exoplayer/ad;

    move-result-object p1

    iput-object p1, p0, Lcom/anythink/basead/ui/PlayerView;->g:Lcom/anythink/expressad/exoplayer/ad;

    new-instance p1, Lcom/anythink/basead/ui/PlayerView$4;

    invoke-direct {p1, p0}, Lcom/anythink/basead/ui/PlayerView$4;-><init>(Lcom/anythink/basead/ui/PlayerView;)V

    iput-object p1, p0, Lcom/anythink/basead/ui/PlayerView;->V:Lcom/anythink/expressad/exoplayer/w$c;

    iget-object v1, p0, Lcom/anythink/basead/ui/PlayerView;->g:Lcom/anythink/expressad/exoplayer/ad;

    invoke-virtual {v1, p1}, Lcom/anythink/expressad/exoplayer/ad;->a(Lcom/anythink/expressad/exoplayer/w$c;)V

    new-instance p1, Lcom/anythink/basead/ui/PlayerView$5;

    invoke-direct {p1, p0}, Lcom/anythink/basead/ui/PlayerView$5;-><init>(Lcom/anythink/basead/ui/PlayerView;)V

    iput-object p1, p0, Lcom/anythink/basead/ui/PlayerView;->W:Lcom/anythink/expressad/exoplayer/l/g;

    iget-object v1, p0, Lcom/anythink/basead/ui/PlayerView;->g:Lcom/anythink/expressad/exoplayer/ad;

    invoke-virtual {v1, p1}, Lcom/anythink/expressad/exoplayer/ad;->a(Lcom/anythink/expressad/exoplayer/l/g;)V

    iget-object p1, p0, Lcom/anythink/basead/ui/PlayerView;->g:Lcom/anythink/expressad/exoplayer/ad;

    iget-boolean v1, p0, Lcom/anythink/basead/ui/PlayerView;->Q:Z

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    goto :goto_1

    :cond_3
    const/high16 v1, 0x3f800000    # 1.0f

    :goto_1
    invoke-virtual {p1, v1}, Lcom/anythink/expressad/exoplayer/ad;->a(F)V

    iget-object p1, p0, Lcom/anythink/basead/ui/PlayerView;->g:Lcom/anythink/expressad/exoplayer/ad;

    invoke-virtual {p1, p2}, Lcom/anythink/expressad/exoplayer/ad;->a(Z)V

    new-instance p1, Ljava/io/File;

    iget-object p2, p0, Lcom/anythink/basead/ui/PlayerView;->A:Ljava/lang/String;

    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/anythink/basead/ui/PlayerView;->A:Ljava/lang/String;

    goto :goto_2

    :cond_4
    iget-object p1, p0, Lcom/anythink/basead/ui/PlayerView;->B:Ljava/lang/String;

    :goto_2
    invoke-direct {p0, p1, v0}, Lcom/anythink/basead/ui/PlayerView;->a(Ljava/lang/String;Z)V

    :cond_5
    new-instance p1, Lcom/anythink/basead/ui/PlayerView$2;

    invoke-direct {p1, p0}, Lcom/anythink/basead/ui/PlayerView$2;-><init>(Lcom/anythink/basead/ui/PlayerView;)V

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 0

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    invoke-virtual {p0}, Lcom/anythink/basead/ui/PlayerView;->release()V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    check-cast p1, Lcom/anythink/basead/ui/PlayerView$a;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onRestoreInstanceState..."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/anythink/basead/ui/PlayerView$a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/View$BaseSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/RelativeLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget v0, p1, Lcom/anythink/basead/ui/PlayerView$a;->a:I

    iput v0, p0, Lcom/anythink/basead/ui/PlayerView;->C:I

    iget-boolean v0, p1, Lcom/anythink/basead/ui/PlayerView$a;->b:Z

    iput-boolean v0, p0, Lcom/anythink/basead/ui/PlayerView;->H:Z

    iget-boolean v0, p1, Lcom/anythink/basead/ui/PlayerView$a;->c:Z

    iput-boolean v0, p0, Lcom/anythink/basead/ui/PlayerView;->I:Z

    iget-boolean v0, p1, Lcom/anythink/basead/ui/PlayerView$a;->d:Z

    iput-boolean v0, p0, Lcom/anythink/basead/ui/PlayerView;->J:Z

    iget-boolean v0, p1, Lcom/anythink/basead/ui/PlayerView$a;->e:Z

    iput-boolean v0, p0, Lcom/anythink/basead/ui/PlayerView;->L:Z

    iget-boolean v0, p1, Lcom/anythink/basead/ui/PlayerView$a;->f:Z

    iput-boolean v0, p0, Lcom/anythink/basead/ui/PlayerView;->M:Z

    iget-boolean v0, p1, Lcom/anythink/basead/ui/PlayerView$a;->g:Z

    iput-boolean v0, p0, Lcom/anythink/basead/ui/PlayerView;->Q:Z

    iget-boolean p1, p1, Lcom/anythink/basead/ui/PlayerView$a;->h:Z

    iput-boolean p1, p0, Lcom/anythink/basead/ui/PlayerView;->T:Z

    iget-object p1, p0, Lcom/anythink/basead/ui/PlayerView;->g:Lcom/anythink/expressad/exoplayer/ad;

    if-eqz p1, :cond_1

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    invoke-virtual {p1, v0}, Lcom/anythink/expressad/exoplayer/ad;->a(F)V

    :cond_1
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    new-instance v1, Lcom/anythink/basead/ui/PlayerView$a;

    invoke-direct {v1, v0}, Lcom/anythink/basead/ui/PlayerView$a;-><init>(Landroid/os/Parcelable;)V

    iget v0, p0, Lcom/anythink/basead/ui/PlayerView;->C:I

    iput v0, v1, Lcom/anythink/basead/ui/PlayerView$a;->a:I

    iget-boolean v0, p0, Lcom/anythink/basead/ui/PlayerView;->H:Z

    iput-boolean v0, v1, Lcom/anythink/basead/ui/PlayerView$a;->b:Z

    iget-boolean v0, p0, Lcom/anythink/basead/ui/PlayerView;->I:Z

    iput-boolean v0, v1, Lcom/anythink/basead/ui/PlayerView$a;->c:Z

    iget-boolean v0, p0, Lcom/anythink/basead/ui/PlayerView;->J:Z

    iput-boolean v0, v1, Lcom/anythink/basead/ui/PlayerView$a;->d:Z

    iget-boolean v0, p0, Lcom/anythink/basead/ui/PlayerView;->L:Z

    iput-boolean v0, v1, Lcom/anythink/basead/ui/PlayerView$a;->e:Z

    iget-boolean v0, p0, Lcom/anythink/basead/ui/PlayerView;->M:Z

    iput-boolean v0, v1, Lcom/anythink/basead/ui/PlayerView$a;->f:Z

    iget-boolean v0, p0, Lcom/anythink/basead/ui/PlayerView;->Q:Z

    iput-boolean v0, v1, Lcom/anythink/basead/ui/PlayerView$a;->g:Z

    iget-boolean v0, p0, Lcom/anythink/basead/ui/PlayerView;->T:Z

    iput-boolean v0, v1, Lcom/anythink/basead/ui/PlayerView$a;->h:Z

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "onSaveInstanceState..."

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/anythink/basead/ui/PlayerView$a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object v1
.end method

.method public pause()V
    .locals 2

    invoke-direct {p0}, Lcom/anythink/basead/ui/PlayerView;->d()V

    iget-object v0, p0, Lcom/anythink/basead/ui/PlayerView;->g:Lcom/anythink/expressad/exoplayer/ad;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/anythink/expressad/exoplayer/ad;->a(Z)V

    :cond_0
    return-void
.end method

.method public release()V
    .locals 3

    invoke-direct {p0}, Lcom/anythink/basead/ui/PlayerView;->d()V

    invoke-virtual {p0}, Lcom/anythink/basead/ui/animplayerview/BasePlayerView;->i()V

    iget-object v0, p0, Lcom/anythink/basead/ui/PlayerView;->g:Lcom/anythink/expressad/exoplayer/ad;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/anythink/expressad/exoplayer/ad;->J()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/anythink/basead/ui/PlayerView;->g:Lcom/anythink/expressad/exoplayer/ad;

    invoke-virtual {v0}, Lcom/anythink/expressad/exoplayer/ad;->m()V

    :cond_0
    iget-object v0, p0, Lcom/anythink/basead/ui/PlayerView;->V:Lcom/anythink/expressad/exoplayer/w$c;

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/anythink/basead/ui/PlayerView;->g:Lcom/anythink/expressad/exoplayer/ad;

    invoke-virtual {v2, v0}, Lcom/anythink/expressad/exoplayer/ad;->b(Lcom/anythink/expressad/exoplayer/w$c;)V

    :cond_1
    iget-object v0, p0, Lcom/anythink/basead/ui/PlayerView;->W:Lcom/anythink/expressad/exoplayer/l/g;

    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/anythink/basead/ui/PlayerView;->g:Lcom/anythink/expressad/exoplayer/ad;

    invoke-virtual {v2, v0}, Lcom/anythink/expressad/exoplayer/ad;->b(Lcom/anythink/expressad/exoplayer/l/g;)V

    :cond_2
    iget-object v0, p0, Lcom/anythink/basead/ui/PlayerView;->g:Lcom/anythink/expressad/exoplayer/ad;

    invoke-virtual {v0}, Lcom/anythink/expressad/exoplayer/ad;->n()V

    iput-object v1, p0, Lcom/anythink/basead/ui/PlayerView;->g:Lcom/anythink/expressad/exoplayer/ad;

    :cond_3
    iget-object v0, p0, Lcom/anythink/basead/ui/PlayerView;->P:Landroid/os/Handler;

    if-eqz v0, :cond_4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_4
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/anythink/basead/ui/PlayerView;->N:Z

    return-void
.end method

.method public setListener(Lcom/anythink/basead/ui/animplayerview/BasePlayerView$a;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/basead/ui/animplayerview/BasePlayerView;->v:Lcom/anythink/basead/ui/animplayerview/BasePlayerView$a;

    return-void
.end method

.method public setLoadingView(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/basead/ui/PlayerView;->U:Landroid/view/View;

    return-void
.end method

.method public setMute(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/anythink/basead/ui/PlayerView;->Q:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/anythink/basead/ui/PlayerView;->g:Lcom/anythink/expressad/exoplayer/ad;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/anythink/expressad/exoplayer/ad;->a(F)V

    :cond_0
    iget-object p1, p0, Lcom/anythink/basead/ui/animplayerview/BasePlayerView;->v:Lcom/anythink/basead/ui/animplayerview/BasePlayerView$a;

    if-eqz p1, :cond_3

    invoke-interface {p1}, Lcom/anythink/basead/ui/animplayerview/BasePlayerView$a;->e()V

    return-void

    :cond_1
    iget-object p1, p0, Lcom/anythink/basead/ui/PlayerView;->g:Lcom/anythink/expressad/exoplayer/ad;

    if-eqz p1, :cond_2

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Lcom/anythink/expressad/exoplayer/ad;->a(F)V

    :cond_2
    iget-object p1, p0, Lcom/anythink/basead/ui/animplayerview/BasePlayerView;->v:Lcom/anythink/basead/ui/animplayerview/BasePlayerView$a;

    if-eqz p1, :cond_3

    invoke-interface {p1}, Lcom/anythink/basead/ui/animplayerview/BasePlayerView$a;->f()V

    :cond_3
    return-void
.end method

.method public setVideoRateConfig(II)V
    .locals 0

    iput p1, p0, Lcom/anythink/basead/ui/PlayerView;->c:I

    iput p2, p0, Lcom/anythink/basead/ui/PlayerView;->b:I

    return-void
.end method

.method public start()V
    .locals 2

    iget-object v0, p0, Lcom/anythink/basead/ui/PlayerView;->U:Landroid/view/View;

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/anythink/basead/ui/PlayerView;->g:Lcom/anythink/expressad/exoplayer/ad;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Lcom/anythink/expressad/exoplayer/ad;->a(Z)V

    :cond_1
    iget-object v0, p0, Lcom/anythink/basead/ui/PlayerView;->R:Ljava/lang/Thread;

    if-nez v0, :cond_2

    iput-boolean v1, p0, Lcom/anythink/basead/ui/PlayerView;->K:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/anythink/basead/ui/PlayerView;->ab:J

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/anythink/basead/ui/PlayerView$3;

    invoke-direct {v1, p0}, Lcom/anythink/basead/ui/PlayerView$3;-><init>(Lcom/anythink/basead/ui/PlayerView;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/anythink/basead/ui/PlayerView;->R:Ljava/lang/Thread;

    const-string v1, "anythink_type_player_progress"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/anythink/basead/ui/PlayerView;->R:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_2
    return-void
.end method

.method public stop()V
    .locals 1

    iget-object v0, p0, Lcom/anythink/basead/ui/PlayerView;->g:Lcom/anythink/expressad/exoplayer/ad;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/anythink/expressad/exoplayer/ad;->m()V

    :cond_0
    iget-object v0, p0, Lcom/anythink/basead/ui/animplayerview/BasePlayerView;->v:Lcom/anythink/basead/ui/animplayerview/BasePlayerView$a;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/anythink/basead/ui/animplayerview/BasePlayerView$a;->b()V

    :cond_1
    invoke-virtual {p0}, Lcom/anythink/basead/ui/animplayerview/BasePlayerView;->i()V

    return-void
.end method
