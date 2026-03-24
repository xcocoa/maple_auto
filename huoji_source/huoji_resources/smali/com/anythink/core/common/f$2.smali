.class public final Lcom/anythink/core/common/f$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/core/common/f;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/anythink/core/d/f;Lcom/anythink/core/common/f/h;Lcom/anythink/core/common/f/v;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:Lcom/anythink/core/common/f/v;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Lcom/anythink/core/d/f;

.field public final synthetic f:Z

.field public final synthetic g:Ljava/util/List;

.field public final synthetic h:Lcom/anythink/core/common/f/ba;

.field public final synthetic i:Lcom/anythink/core/common/f/h;

.field public final synthetic j:Lcom/anythink/core/common/f/az;

.field public final synthetic k:Lcom/anythink/core/common/f/aq;

.field public final synthetic l:Lcom/anythink/core/common/f/p;

.field public final synthetic m:Lcom/anythink/core/common/p/i;

.field public final synthetic n:Lcom/anythink/core/common/f;


# direct methods
.method public constructor <init>(Lcom/anythink/core/common/f;Landroid/content/Context;Lcom/anythink/core/common/f/v;Ljava/lang/String;Ljava/lang/String;Lcom/anythink/core/d/f;ZLjava/util/List;Lcom/anythink/core/common/f/ba;Lcom/anythink/core/common/f/h;Lcom/anythink/core/common/f/az;Lcom/anythink/core/common/f/aq;Lcom/anythink/core/common/f/p;Lcom/anythink/core/common/p/i;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/core/common/f$2;->n:Lcom/anythink/core/common/f;

    iput-object p2, p0, Lcom/anythink/core/common/f$2;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/anythink/core/common/f$2;->b:Lcom/anythink/core/common/f/v;

    iput-object p4, p0, Lcom/anythink/core/common/f$2;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/anythink/core/common/f$2;->d:Ljava/lang/String;

    iput-object p6, p0, Lcom/anythink/core/common/f$2;->e:Lcom/anythink/core/d/f;

    iput-boolean p7, p0, Lcom/anythink/core/common/f$2;->f:Z

    iput-object p8, p0, Lcom/anythink/core/common/f$2;->g:Ljava/util/List;

    iput-object p9, p0, Lcom/anythink/core/common/f$2;->h:Lcom/anythink/core/common/f/ba;

    iput-object p10, p0, Lcom/anythink/core/common/f$2;->i:Lcom/anythink/core/common/f/h;

    iput-object p11, p0, Lcom/anythink/core/common/f$2;->j:Lcom/anythink/core/common/f/az;

    iput-object p12, p0, Lcom/anythink/core/common/f$2;->k:Lcom/anythink/core/common/f/aq;

    iput-object p13, p0, Lcom/anythink/core/common/f$2;->l:Lcom/anythink/core/common/f/p;

    iput-object p14, p0, Lcom/anythink/core/common/f$2;->m:Lcom/anythink/core/common/p/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    :try_start_0
    new-instance v0, Lcom/anythink/core/common/f/a;

    invoke-direct {v0}, Lcom/anythink/core/common/f/a;-><init>()V

    iget-object v1, p0, Lcom/anythink/core/common/f$2;->a:Landroid/content/Context;

    iput-object v1, v0, Lcom/anythink/core/common/f/a;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/anythink/core/common/f$2;->b:Lcom/anythink/core/common/f/v;

    iput-object v1, v0, Lcom/anythink/core/common/f/a;->c:Lcom/anythink/core/common/f/v;

    iget-object v1, p0, Lcom/anythink/core/common/f$2;->c:Ljava/lang/String;

    iput-object v1, v0, Lcom/anythink/core/common/f/a;->d:Ljava/lang/String;

    iget-object v1, p0, Lcom/anythink/core/common/f$2;->d:Ljava/lang/String;

    iput-object v1, v0, Lcom/anythink/core/common/f/a;->e:Ljava/lang/String;

    iget-object v1, p0, Lcom/anythink/core/common/f$2;->e:Lcom/anythink/core/d/f;

    invoke-virtual {v1}, Lcom/anythink/core/d/f;->ah()I

    move-result v1

    iput v1, v0, Lcom/anythink/core/common/f/a;->f:I

    iget-object v1, p0, Lcom/anythink/core/common/f$2;->e:Lcom/anythink/core/d/f;

    invoke-virtual {v1}, Lcom/anythink/core/d/f;->S()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/anythink/core/common/f/a;->g:J

    iget-object v1, p0, Lcom/anythink/core/common/f$2;->e:Lcom/anythink/core/d/f;

    invoke-virtual {v1}, Lcom/anythink/core/d/f;->M()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/anythink/core/common/f/a;->h:J

    iget-object v1, p0, Lcom/anythink/core/common/f$2;->e:Lcom/anythink/core/d/f;

    invoke-virtual {v1}, Lcom/anythink/core/d/f;->v()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/anythink/core/common/f/a;->i:J

    invoke-static {}, Lcom/anythink/core/common/h;->a()Lcom/anythink/core/common/h;

    iget-object v1, p0, Lcom/anythink/core/common/f$2;->e:Lcom/anythink/core/d/f;

    iget-boolean v2, p0, Lcom/anythink/core/common/f$2;->f:Z

    invoke-static {v1, v2}, Lcom/anythink/core/common/h;->a(Lcom/anythink/core/d/f;Z)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/anythink/core/common/f/a;->l:Ljava/lang/String;

    invoke-static {}, Lcom/anythink/core/common/h;->a()Lcom/anythink/core/common/h;

    iget-object v1, p0, Lcom/anythink/core/common/f$2;->e:Lcom/anythink/core/d/f;

    invoke-static {v1}, Lcom/anythink/core/common/h;->a(Lcom/anythink/core/d/f;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/anythink/core/common/f/a;->o:Ljava/lang/String;

    invoke-static {}, Lcom/anythink/core/common/h;->a()Lcom/anythink/core/common/h;

    iget-object v1, p0, Lcom/anythink/core/common/f$2;->e:Lcom/anythink/core/d/f;

    invoke-static {v1}, Lcom/anythink/core/common/h;->b(Lcom/anythink/core/d/f;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/anythink/core/common/f/a;->p:Ljava/lang/String;

    iget-object v1, p0, Lcom/anythink/core/common/f$2;->g:Ljava/util/List;

    iput-object v1, v0, Lcom/anythink/core/common/f/a;->j:Ljava/util/List;

    iget-object v1, p0, Lcom/anythink/core/common/f$2;->h:Lcom/anythink/core/common/f/ba;

    iput-object v1, v0, Lcom/anythink/core/common/f/a;->n:Lcom/anythink/core/common/f/ba;

    iget-object v1, p0, Lcom/anythink/core/common/f$2;->i:Lcom/anythink/core/common/f/h;

    iput-object v1, v0, Lcom/anythink/core/common/f/a;->s:Lcom/anythink/core/common/f/h;

    iget-object v1, p0, Lcom/anythink/core/common/f$2;->j:Lcom/anythink/core/common/f/az;

    iput-object v1, v0, Lcom/anythink/core/common/f/a;->v:Lcom/anythink/core/common/f/az;

    iget-object v1, p0, Lcom/anythink/core/common/f$2;->k:Lcom/anythink/core/common/f/aq;

    iput-object v1, v0, Lcom/anythink/core/common/f/a;->w:Lcom/anythink/core/common/f/aq;

    iget-object v1, p0, Lcom/anythink/core/common/f$2;->l:Lcom/anythink/core/common/f/p;

    iput-object v1, v0, Lcom/anythink/core/common/f/a;->x:Lcom/anythink/core/common/f/p;

    invoke-static {}, Lcom/anythink/core/common/u;->a()Lcom/anythink/core/common/u;

    move-result-object v1

    iget-object v2, p0, Lcom/anythink/core/common/f$2;->n:Lcom/anythink/core/common/f;

    iget-object v2, v2, Lcom/anythink/core/common/f;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/anythink/core/common/u;->b(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, v0, Lcom/anythink/core/common/f/a;->q:Ljava/util/Map;

    iget-boolean v1, p0, Lcom/anythink/core/common/f$2;->f:Z

    iput-boolean v1, v0, Lcom/anythink/core/common/f/a;->m:Z

    iget-object v1, p0, Lcom/anythink/core/common/f$2;->b:Lcom/anythink/core/common/f/v;

    iget v2, v1, Lcom/anythink/core/common/f/v;->d:I

    const/16 v3, 0x8

    if-ne v2, v3, :cond_0

    const/4 v2, 0x7

    iput v2, v0, Lcom/anythink/core/common/f/a;->t:I

    :cond_0
    iget-object v2, p0, Lcom/anythink/core/common/f$2;->m:Lcom/anythink/core/common/p/i;

    iput-object v2, v0, Lcom/anythink/core/common/f/a;->y:Lcom/anythink/core/common/p/i;

    iget-object v1, v1, Lcom/anythink/core/common/f/v;->l:Lcom/anythink/core/basead/adx/api/ATAdxBidFloorInfo;

    iput-object v1, v0, Lcom/anythink/core/common/f/a;->A:Lcom/anythink/core/basead/adx/api/ATAdxBidFloorInfo;

    invoke-static {}, Lcom/anythink/core/common/d;->a()Lcom/anythink/core/common/d;

    move-result-object v1

    iget-object v2, p0, Lcom/anythink/core/common/f$2;->n:Lcom/anythink/core/common/f;

    iget-object v2, v2, Lcom/anythink/core/common/f;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/anythink/core/common/d;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/anythink/core/common/f/a;->B:Ljava/lang/String;

    new-instance v1, Lcom/anythink/core/b/b;

    invoke-direct {v1, v0}, Lcom/anythink/core/b/b;-><init>(Lcom/anythink/core/common/f/a;)V

    invoke-static {}, Lcom/anythink/core/api/ATSDK;->isNetworkLogDebug()Z

    move-result v0

    invoke-interface {v1, v0}, Lcom/anythink/core/common/i$b;->a(Z)V

    new-instance v0, Lcom/anythink/core/common/f$2$1;

    invoke-direct {v0, p0}, Lcom/anythink/core/common/f$2$1;-><init>(Lcom/anythink/core/common/f$2;)V

    invoke-interface {v1, v0}, Lcom/anythink/core/common/i$b;->a(Lcom/anythink/core/common/i$a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    nop

    iget-object v0, p0, Lcom/anythink/core/common/f$2;->n:Lcom/anythink/core/common/f;

    iget-object v0, v0, Lcom/anythink/core/common/f;->c:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v1, p0, Lcom/anythink/core/common/f$2;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anythink/core/common/g;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/anythink/core/common/g;->e()V

    :cond_1
    return-void
.end method
