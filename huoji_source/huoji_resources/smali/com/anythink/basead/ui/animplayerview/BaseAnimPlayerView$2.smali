.class public final Lcom/anythink/basead/ui/animplayerview/BaseAnimPlayerView$2;
.super Landroid/os/Handler;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/basead/ui/animplayerview/BaseAnimPlayerView;->j()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/anythink/basead/ui/animplayerview/BaseAnimPlayerView;


# direct methods
.method public constructor <init>(Lcom/anythink/basead/ui/animplayerview/BaseAnimPlayerView;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/basead/ui/animplayerview/BaseAnimPlayerView$2;->a:Lcom/anythink/basead/ui/animplayerview/BaseAnimPlayerView;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 6

    iget-object p1, p0, Lcom/anythink/basead/ui/animplayerview/BaseAnimPlayerView$2;->a:Lcom/anythink/basead/ui/animplayerview/BaseAnimPlayerView;

    iget-object v0, p1, Lcom/anythink/basead/ui/animplayerview/BasePlayerView;->v:Lcom/anythink/basead/ui/animplayerview/BasePlayerView$a;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-wide v0, p1, Lcom/anythink/basead/ui/animplayerview/BaseAnimPlayerView;->b:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    add-long/2addr v0, v2

    iget-object v2, p0, Lcom/anythink/basead/ui/animplayerview/BaseAnimPlayerView$2;->a:Lcom/anythink/basead/ui/animplayerview/BaseAnimPlayerView;

    iget-wide v3, v2, Lcom/anythink/basead/ui/animplayerview/BaseAnimPlayerView;->c:J

    sub-long/2addr v0, v3

    iput-wide v0, p1, Lcom/anythink/basead/ui/animplayerview/BasePlayerView;->i:J

    iget-boolean p1, v2, Lcom/anythink/basead/ui/animplayerview/BasePlayerView;->r:Z

    const/4 v0, 0x1

    if-nez p1, :cond_1

    iget-boolean p1, v2, Lcom/anythink/basead/ui/animplayerview/BasePlayerView;->s:Z

    if-nez p1, :cond_1

    iput-boolean v0, v2, Lcom/anythink/basead/ui/animplayerview/BasePlayerView;->r:Z

    iget-object p1, v2, Lcom/anythink/basead/ui/animplayerview/BasePlayerView;->v:Lcom/anythink/basead/ui/animplayerview/BasePlayerView$a;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/anythink/basead/ui/animplayerview/BasePlayerView$a;->a()V

    :cond_1
    iget-object p1, p0, Lcom/anythink/basead/ui/animplayerview/BaseAnimPlayerView$2;->a:Lcom/anythink/basead/ui/animplayerview/BaseAnimPlayerView;

    iget-object v1, p1, Lcom/anythink/basead/ui/animplayerview/BasePlayerView;->v:Lcom/anythink/basead/ui/animplayerview/BasePlayerView$a;

    if-eqz v1, :cond_2

    iget-wide v2, p1, Lcom/anythink/basead/ui/animplayerview/BasePlayerView;->i:J

    invoke-interface {v1, v2, v3}, Lcom/anythink/basead/ui/animplayerview/BasePlayerView$a;->a(J)V

    :cond_2
    iget-object p1, p0, Lcom/anythink/basead/ui/animplayerview/BaseAnimPlayerView$2;->a:Lcom/anythink/basead/ui/animplayerview/BaseAnimPlayerView;

    iget-boolean v1, p1, Lcom/anythink/basead/ui/animplayerview/BasePlayerView;->m:Z

    if-nez v1, :cond_3

    iget-wide v1, p1, Lcom/anythink/basead/ui/animplayerview/BasePlayerView;->i:J

    iget v3, p1, Lcom/anythink/basead/ui/animplayerview/BasePlayerView;->j:I

    int-to-long v3, v3

    cmp-long v5, v1, v3

    if-ltz v5, :cond_3

    iput-boolean v0, p1, Lcom/anythink/basead/ui/animplayerview/BasePlayerView;->m:Z

    iget-object p1, p1, Lcom/anythink/basead/ui/animplayerview/BasePlayerView;->v:Lcom/anythink/basead/ui/animplayerview/BasePlayerView$a;

    if-eqz p1, :cond_5

    const/16 v1, 0x19

    :goto_0
    invoke-interface {p1, v1}, Lcom/anythink/basead/ui/animplayerview/BasePlayerView$a;->a(I)V

    goto :goto_1

    :cond_3
    iget-boolean v1, p1, Lcom/anythink/basead/ui/animplayerview/BasePlayerView;->n:Z

    if-nez v1, :cond_4

    iget-wide v1, p1, Lcom/anythink/basead/ui/animplayerview/BasePlayerView;->i:J

    iget v3, p1, Lcom/anythink/basead/ui/animplayerview/BasePlayerView;->k:I

    int-to-long v3, v3

    cmp-long v5, v1, v3

    if-ltz v5, :cond_4

    iput-boolean v0, p1, Lcom/anythink/basead/ui/animplayerview/BasePlayerView;->n:Z

    iget-object p1, p1, Lcom/anythink/basead/ui/animplayerview/BasePlayerView;->v:Lcom/anythink/basead/ui/animplayerview/BasePlayerView$a;

    if-eqz p1, :cond_5

    const/16 v1, 0x32

    goto :goto_0

    :cond_4
    iget-boolean v1, p1, Lcom/anythink/basead/ui/animplayerview/BasePlayerView;->o:Z

    if-nez v1, :cond_5

    iget-wide v1, p1, Lcom/anythink/basead/ui/animplayerview/BasePlayerView;->i:J

    iget v3, p1, Lcom/anythink/basead/ui/animplayerview/BasePlayerView;->l:I

    int-to-long v3, v3

    cmp-long v5, v1, v3

    if-ltz v5, :cond_5

    iput-boolean v0, p1, Lcom/anythink/basead/ui/animplayerview/BasePlayerView;->o:Z

    iget-object p1, p1, Lcom/anythink/basead/ui/animplayerview/BasePlayerView;->v:Lcom/anythink/basead/ui/animplayerview/BasePlayerView$a;

    if-eqz p1, :cond_5

    const/16 v1, 0x4b

    goto :goto_0

    :cond_5
    :goto_1
    iget-object p1, p0, Lcom/anythink/basead/ui/animplayerview/BaseAnimPlayerView$2;->a:Lcom/anythink/basead/ui/animplayerview/BaseAnimPlayerView;

    iget-boolean v1, p1, Lcom/anythink/basead/ui/animplayerview/BasePlayerView;->s:Z

    if-nez v1, :cond_7

    iget-wide v1, p1, Lcom/anythink/basead/ui/animplayerview/BasePlayerView;->i:J

    iget-wide v3, p1, Lcom/anythink/basead/ui/animplayerview/BasePlayerView;->h:J

    cmp-long v5, v1, v3

    if-ltz v5, :cond_7

    invoke-static {p1}, Lcom/anythink/basead/ui/animplayerview/BaseAnimPlayerView;->a(Lcom/anythink/basead/ui/animplayerview/BaseAnimPlayerView;)V

    iget-object p1, p0, Lcom/anythink/basead/ui/animplayerview/BaseAnimPlayerView$2;->a:Lcom/anythink/basead/ui/animplayerview/BaseAnimPlayerView;

    invoke-static {p1}, Lcom/anythink/basead/ui/animplayerview/BaseAnimPlayerView;->b(Lcom/anythink/basead/ui/animplayerview/BaseAnimPlayerView;)Z

    iget-object p1, p0, Lcom/anythink/basead/ui/animplayerview/BaseAnimPlayerView$2;->a:Lcom/anythink/basead/ui/animplayerview/BaseAnimPlayerView;

    iput-boolean v0, p1, Lcom/anythink/basead/ui/animplayerview/BasePlayerView;->s:Z

    iget-object p1, p1, Lcom/anythink/basead/ui/animplayerview/BasePlayerView;->v:Lcom/anythink/basead/ui/animplayerview/BasePlayerView$a;

    if-eqz p1, :cond_6

    invoke-interface {p1}, Lcom/anythink/basead/ui/animplayerview/BasePlayerView$a;->c()V

    :cond_6
    iget-object p1, p0, Lcom/anythink/basead/ui/animplayerview/BaseAnimPlayerView$2;->a:Lcom/anythink/basead/ui/animplayerview/BaseAnimPlayerView;

    invoke-virtual {p1}, Lcom/anythink/basead/ui/animplayerview/BasePlayerView;->i()V

    :cond_7
    return-void
.end method
