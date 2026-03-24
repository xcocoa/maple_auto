.class public abstract Lcom/anythink/basead/ui/animplayerview/BasePlayerView;
.super Landroid/widget/RelativeLayout;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/anythink/basead/ui/animplayerview/BasePlayerView$a;
    }
.end annotation


# instance fields
.field public h:J

.field public i:J

.field public j:I

.field public k:I

.field public l:I

.field public m:Z

.field public n:Z

.field public o:Z

.field public p:Z

.field public q:Z

.field public r:Z

.field public s:Z

.field public t:Ljava/lang/Thread;

.field public u:Landroid/os/Handler;

.field public v:Lcom/anythink/basead/ui/animplayerview/BasePlayerView$a;

.field public w:Lcom/anythink/core/common/f/l;

.field public x:Lcom/anythink/core/common/f/m;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const-wide/16 v0, 0x1388

    iput-wide v0, p0, Lcom/anythink/basead/ui/animplayerview/BasePlayerView;->h:J

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/anythink/basead/ui/animplayerview/BasePlayerView;->i:J

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/anythink/basead/ui/animplayerview/BasePlayerView;->q:Z

    iput-boolean p1, p0, Lcom/anythink/basead/ui/animplayerview/BasePlayerView;->r:Z

    iput-boolean p1, p0, Lcom/anythink/basead/ui/animplayerview/BasePlayerView;->s:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-wide/16 p1, 0x1388

    iput-wide p1, p0, Lcom/anythink/basead/ui/animplayerview/BasePlayerView;->h:J

    const-wide/16 p1, -0x1

    iput-wide p1, p0, Lcom/anythink/basead/ui/animplayerview/BasePlayerView;->i:J

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/anythink/basead/ui/animplayerview/BasePlayerView;->q:Z

    iput-boolean p1, p0, Lcom/anythink/basead/ui/animplayerview/BasePlayerView;->r:Z

    iput-boolean p1, p0, Lcom/anythink/basead/ui/animplayerview/BasePlayerView;->s:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-wide/16 p1, 0x1388

    iput-wide p1, p0, Lcom/anythink/basead/ui/animplayerview/BasePlayerView;->h:J

    const-wide/16 p1, -0x1

    iput-wide p1, p0, Lcom/anythink/basead/ui/animplayerview/BasePlayerView;->i:J

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/anythink/basead/ui/animplayerview/BasePlayerView;->q:Z

    iput-boolean p1, p0, Lcom/anythink/basead/ui/animplayerview/BasePlayerView;->r:Z

    iput-boolean p1, p0, Lcom/anythink/basead/ui/animplayerview/BasePlayerView;->s:Z

    return-void
.end method


# virtual methods
.method public a(Lcom/anythink/basead/c/e;)V
    .locals 1

    iget-object v0, p0, Lcom/anythink/basead/ui/animplayerview/BasePlayerView;->v:Lcom/anythink/basead/ui/animplayerview/BasePlayerView$a;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/anythink/basead/ui/animplayerview/BasePlayerView$a;->a(Lcom/anythink/basead/c/e;)V

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/anythink/basead/ui/animplayerview/BasePlayerView;->v:Lcom/anythink/basead/ui/animplayerview/BasePlayerView$a;

    return-void
.end method

.method public abstract getCurrentPosition()J
.end method

.method public abstract getVideoLength()J
.end method

.method public abstract hasVideo()Z
.end method

.method public final i()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/anythink/basead/ui/animplayerview/BasePlayerView;->v:Lcom/anythink/basead/ui/animplayerview/BasePlayerView$a;

    return-void
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

    iput-object p1, p0, Lcom/anythink/basead/ui/animplayerview/BasePlayerView;->w:Lcom/anythink/core/common/f/l;

    iput-object p2, p0, Lcom/anythink/basead/ui/animplayerview/BasePlayerView;->x:Lcom/anythink/core/common/f/m;

    return-void
.end method

.method public abstract isMute()Z
.end method

.method public abstract isPlaying()Z
.end method

.method public abstract pause()V
.end method

.method public abstract setListener(Lcom/anythink/basead/ui/animplayerview/BasePlayerView$a;)V
.end method

.method public abstract setMute(Z)V
.end method

.method public abstract start()V
.end method

.method public abstract stop()V
.end method
