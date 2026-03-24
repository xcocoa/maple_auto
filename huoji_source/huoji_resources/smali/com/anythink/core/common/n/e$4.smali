.class public final Lcom/anythink/core/common/n/e$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/core/common/n/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Ljava/lang/String;

.field public final synthetic f:J

.field public final synthetic g:I


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JI)V
    .locals 0

    iput p1, p0, Lcom/anythink/core/common/n/e$4;->a:I

    iput-object p2, p0, Lcom/anythink/core/common/n/e$4;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/anythink/core/common/n/e$4;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/anythink/core/common/n/e$4;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/anythink/core/common/n/e$4;->e:Ljava/lang/String;

    iput-wide p6, p0, Lcom/anythink/core/common/n/e$4;->f:J

    iput p8, p0, Lcom/anythink/core/common/n/e$4;->g:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    new-instance v0, Lcom/anythink/core/common/f/k;

    iget v1, p0, Lcom/anythink/core/common/n/e$4;->a:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lcom/anythink/core/common/f/k;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "1004691"

    iput-object v1, v0, Lcom/anythink/core/common/f/k;->a:Ljava/lang/String;

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/core/common/b/n;->f()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/anythink/core/d/b;->a(Landroid/content/Context;)Lcom/anythink/core/d/b;

    move-result-object v1

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v2

    invoke-virtual {v2}, Lcom/anythink/core/common/b/n;->o()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/anythink/core/d/b;->b(Ljava/lang/String;)Lcom/anythink/core/d/a;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/anythink/core/d/a;->I()Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {v1}, Lcom/anythink/core/d/a;->c()Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    invoke-static {v1, v0}, Lcom/anythink/core/common/n/e;->a(Lcom/anythink/core/d/a;Lcom/anythink/core/common/f/k;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Lcom/anythink/core/common/n/e$4;->b:Ljava/lang/String;

    iput-object v1, v0, Lcom/anythink/core/common/f/k;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/anythink/core/common/n/e$4;->c:Ljava/lang/String;

    iput-object v1, v0, Lcom/anythink/core/common/f/k;->d:Ljava/lang/String;

    iget-object v1, p0, Lcom/anythink/core/common/n/e$4;->d:Ljava/lang/String;

    iput-object v1, v0, Lcom/anythink/core/common/f/k;->m:Ljava/lang/String;

    iget-object v1, p0, Lcom/anythink/core/common/n/e$4;->e:Ljava/lang/String;

    iput-object v1, v0, Lcom/anythink/core/common/f/k;->n:Ljava/lang/String;

    iget-wide v1, p0, Lcom/anythink/core/common/n/e$4;->f:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-ltz v5, :cond_2

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/anythink/core/common/f/k;->o:Ljava/lang/String;

    :cond_2
    iget v1, p0, Lcom/anythink/core/common/n/e$4;->g:I

    if-lez v1, :cond_3

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/anythink/core/common/f/k;->p:Ljava/lang/String;

    :cond_3
    invoke-static {}, Lcom/anythink/core/common/i/e;->a()Lcom/anythink/core/common/i/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/core/common/i/e;->b()Lcom/anythink/core/common/i/d;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/anythink/core/common/i/d;->a()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/anythink/core/common/f/k;->q:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/anythink/core/common/i/d;->e()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/anythink/core/common/f/k;->r:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/anythink/core/common/i/d;->f()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/anythink/core/common/f/k;->s:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/anythink/core/common/i/d;->b()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/anythink/core/common/f/k;->t:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/anythink/core/common/i/d;->g()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/anythink/core/common/f/k;->u:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/anythink/core/common/i/d;->h()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/anythink/core/common/f/k;->v:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/anythink/core/common/i/d;->c()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/anythink/core/common/f/k;->w:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/anythink/core/common/i/d;->d()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/anythink/core/common/f/k;->x:Ljava/lang/String;

    :cond_4
    invoke-static {}, Lcom/anythink/core/common/i/e;->a()Lcom/anythink/core/common/i/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/core/common/i/e;->e()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/anythink/core/common/f/k;->y:Ljava/lang/String;

    invoke-static {v0}, Lcom/anythink/core/common/n/e;->a(Lcom/anythink/core/common/f/k;)V

    :cond_5
    return-void
.end method
