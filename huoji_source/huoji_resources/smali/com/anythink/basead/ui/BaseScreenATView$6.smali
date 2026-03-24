.class public final Lcom/anythink/basead/ui/BaseScreenATView$6;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/anythink/basead/ui/animplayerview/BasePlayerView$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/basead/ui/BaseScreenATView;->a(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/anythink/basead/ui/BaseScreenATView;


# direct methods
.method public constructor <init>(Lcom/anythink/basead/ui/BaseScreenATView;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/basead/ui/BaseScreenATView$6;->a:Lcom/anythink/basead/ui/BaseScreenATView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    sget-object v0, Lcom/anythink/basead/ui/BaseScreenATView;->TAG:Ljava/lang/String;

    iget-object v0, p0, Lcom/anythink/basead/ui/BaseScreenATView$6;->a:Lcom/anythink/basead/ui/BaseScreenATView;

    iget-object v1, v0, Lcom/anythink/basead/ui/BaseATView;->t:Lcom/anythink/basead/ui/b/a;

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/anythink/basead/ui/BaseScreenATView;->L:Lcom/anythink/basead/ui/animplayerview/BasePlayerView;

    invoke-virtual {v0}, Lcom/anythink/basead/ui/animplayerview/BasePlayerView;->getVideoLength()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/anythink/basead/ui/b/a;->a(J)V

    :cond_0
    iget-object v0, p0, Lcom/anythink/basead/ui/BaseScreenATView$6;->a:Lcom/anythink/basead/ui/BaseScreenATView;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Lcom/anythink/basead/ui/BaseATView;->a(I)V

    iget-object v0, p0, Lcom/anythink/basead/ui/BaseScreenATView$6;->a:Lcom/anythink/basead/ui/BaseScreenATView;

    invoke-virtual {v0}, Lcom/anythink/basead/ui/BaseScreenATView;->E()V

    iget-object v0, p0, Lcom/anythink/basead/ui/BaseScreenATView$6;->a:Lcom/anythink/basead/ui/BaseScreenATView;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/anythink/basead/ui/BaseScreenATView;->a(Lcom/anythink/basead/ui/BaseScreenATView;J)J

    iget-object v0, p0, Lcom/anythink/basead/ui/BaseScreenATView$6;->a:Lcom/anythink/basead/ui/BaseScreenATView;

    invoke-virtual {v0}, Lcom/anythink/basead/ui/BaseScreenATView;->h()V

    iget-object v0, p0, Lcom/anythink/basead/ui/BaseScreenATView$6;->a:Lcom/anythink/basead/ui/BaseScreenATView;

    invoke-static {v0}, Lcom/anythink/basead/ui/BaseScreenATView;->b(Lcom/anythink/basead/ui/BaseScreenATView;)V

    return-void
.end method

.method public final a(I)V
    .locals 2

    iget-object v0, p0, Lcom/anythink/basead/ui/BaseScreenATView$6;->a:Lcom/anythink/basead/ui/BaseScreenATView;

    invoke-virtual {v0}, Lcom/anythink/basead/ui/BaseScreenATView;->i()Lcom/anythink/basead/c/i;

    move-result-object v0

    const/16 v1, 0x19

    if-eq p1, v1, :cond_2

    const/16 v1, 0x32

    if-eq p1, v1, :cond_1

    const/16 v1, 0x4b

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/anythink/basead/ui/BaseScreenATView;->TAG:Ljava/lang/String;

    const/4 p1, 0x4

    iget-object v1, p0, Lcom/anythink/basead/ui/BaseScreenATView$6;->a:Lcom/anythink/basead/ui/BaseScreenATView;

    iget-object v1, v1, Lcom/anythink/basead/ui/BaseATView;->c:Lcom/anythink/core/common/f/l;

    invoke-static {p1, v1, v0}, Lcom/anythink/basead/a/a;->a(ILcom/anythink/core/common/f/l;Lcom/anythink/basead/c/i;)V

    :goto_0
    return-void

    :cond_1
    sget-object p1, Lcom/anythink/basead/ui/BaseScreenATView;->TAG:Ljava/lang/String;

    const/4 p1, 0x3

    :goto_1
    iget-object v1, p0, Lcom/anythink/basead/ui/BaseScreenATView$6;->a:Lcom/anythink/basead/ui/BaseScreenATView;

    iget-object v1, v1, Lcom/anythink/basead/ui/BaseATView;->c:Lcom/anythink/core/common/f/l;

    invoke-static {p1, v1, v0}, Lcom/anythink/basead/a/a;->a(ILcom/anythink/core/common/f/l;Lcom/anythink/basead/c/i;)V

    return-void

    :cond_2
    sget-object p1, Lcom/anythink/basead/ui/BaseScreenATView;->TAG:Ljava/lang/String;

    const/4 p1, 0x2

    goto :goto_1
.end method

.method public final a(J)V
    .locals 4

    iget-object v0, p0, Lcom/anythink/basead/ui/BaseScreenATView$6;->a:Lcom/anythink/basead/ui/BaseScreenATView;

    invoke-static {v0, p1, p2}, Lcom/anythink/basead/ui/BaseScreenATView;->b(Lcom/anythink/basead/ui/BaseScreenATView;J)V

    iget-object v0, p0, Lcom/anythink/basead/ui/BaseScreenATView$6;->a:Lcom/anythink/basead/ui/BaseScreenATView;

    invoke-virtual {v0, p1, p2}, Lcom/anythink/basead/ui/BaseScreenATView;->a(J)V

    iget-object v0, p0, Lcom/anythink/basead/ui/BaseScreenATView$6;->a:Lcom/anythink/basead/ui/BaseScreenATView;

    invoke-virtual {v0, p1, p2}, Lcom/anythink/basead/ui/BaseScreenATView;->b(J)V

    iget-object v0, p0, Lcom/anythink/basead/ui/BaseScreenATView$6;->a:Lcom/anythink/basead/ui/BaseScreenATView;

    iget v1, v0, Lcom/anythink/basead/ui/BaseScreenATView;->C:I

    if-ltz v1, :cond_0

    int-to-long v1, v1

    cmp-long v3, p1, v1

    if-ltz v3, :cond_0

    invoke-virtual {v0}, Lcom/anythink/basead/ui/BaseScreenATView;->I()V

    :cond_0
    iget-object v0, p0, Lcom/anythink/basead/ui/BaseScreenATView$6;->a:Lcom/anythink/basead/ui/BaseScreenATView;

    iget-object v0, v0, Lcom/anythink/basead/ui/BaseATView;->b:Lcom/anythink/core/common/f/m;

    iget-object v0, v0, Lcom/anythink/core/common/f/m;->n:Lcom/anythink/core/common/f/n;

    invoke-virtual {v0}, Lcom/anythink/core/common/f/n;->k()J

    move-result-wide v0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_1

    iget-object p1, p0, Lcom/anythink/basead/ui/BaseScreenATView$6;->a:Lcom/anythink/basead/ui/BaseScreenATView;

    iget-boolean p2, p1, Lcom/anythink/basead/ui/BaseScreenATView;->H:Z

    if-nez p2, :cond_1

    invoke-virtual {p1}, Lcom/anythink/basead/ui/BaseScreenATView;->I()V

    iget-object p1, p0, Lcom/anythink/basead/ui/BaseScreenATView$6;->a:Lcom/anythink/basead/ui/BaseScreenATView;

    const/4 p2, 0x1

    iput-boolean p2, p1, Lcom/anythink/basead/ui/BaseScreenATView;->H:Z

    iget-object p1, p1, Lcom/anythink/basead/ui/BaseScreenATView;->T:Lcom/anythink/basead/e/h;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/anythink/basead/e/b$b;->c()V

    :cond_1
    return-void
.end method

.method public final a(Lcom/anythink/basead/c/e;)V
    .locals 4

    iget-object v0, p0, Lcom/anythink/basead/ui/BaseScreenATView$6;->a:Lcom/anythink/basead/ui/BaseScreenATView;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/anythink/basead/ui/BaseATView;->r:Z

    const/16 v2, 0x6c

    invoke-virtual {v0, v2}, Lcom/anythink/basead/ui/BaseATView;->a(I)V

    iget-object v0, p0, Lcom/anythink/basead/ui/BaseScreenATView$6;->a:Lcom/anythink/basead/ui/BaseScreenATView;

    iget-object v0, v0, Lcom/anythink/basead/ui/BaseScreenATView;->T:Lcom/anythink/basead/e/h;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/anythink/basead/e/h;->h()V

    :cond_0
    iget-object v0, p0, Lcom/anythink/basead/ui/BaseScreenATView$6;->a:Lcom/anythink/basead/ui/BaseScreenATView;

    invoke-virtual {v0}, Lcom/anythink/basead/ui/BaseScreenATView;->i()Lcom/anythink/basead/c/i;

    move-result-object v0

    iget-object v2, p0, Lcom/anythink/basead/ui/BaseScreenATView$6;->a:Lcom/anythink/basead/ui/BaseScreenATView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/anythink/basead/ui/BaseScreenATView;->fillVideoEndRecord(Z)Lcom/anythink/basead/c/j;

    move-result-object v2

    iput-object v2, v0, Lcom/anythink/basead/c/i;->h:Lcom/anythink/basead/c/j;

    const/16 v2, 0x11

    iget-object v3, p0, Lcom/anythink/basead/ui/BaseScreenATView$6;->a:Lcom/anythink/basead/ui/BaseScreenATView;

    iget-object v3, v3, Lcom/anythink/basead/ui/BaseATView;->c:Lcom/anythink/core/common/f/l;

    invoke-static {v2, v3, v0}, Lcom/anythink/basead/a/a;->a(ILcom/anythink/core/common/f/l;Lcom/anythink/basead/c/i;)V

    iget-object v0, p0, Lcom/anythink/basead/ui/BaseScreenATView$6;->a:Lcom/anythink/basead/ui/BaseScreenATView;

    invoke-virtual {v0, p1}, Lcom/anythink/basead/ui/BaseScreenATView;->a(Lcom/anythink/basead/c/e;)V

    iget-object p1, p0, Lcom/anythink/basead/ui/BaseScreenATView$6;->a:Lcom/anythink/basead/ui/BaseScreenATView;

    iget-boolean v0, p1, Lcom/anythink/basead/ui/BaseScreenATView;->H:Z

    if-nez v0, :cond_1

    iget-object p1, p1, Lcom/anythink/basead/ui/BaseATView;->b:Lcom/anythink/core/common/f/m;

    iget-object p1, p1, Lcom/anythink/core/common/f/m;->n:Lcom/anythink/core/common/f/n;

    invoke-virtual {p1}, Lcom/anythink/core/common/f/n;->l()I

    move-result p1

    if-ne p1, v1, :cond_1

    iget-object p1, p0, Lcom/anythink/basead/ui/BaseScreenATView$6;->a:Lcom/anythink/basead/ui/BaseScreenATView;

    iput-boolean v1, p1, Lcom/anythink/basead/ui/BaseScreenATView;->H:Z

    iget-object p1, p1, Lcom/anythink/basead/ui/BaseScreenATView;->T:Lcom/anythink/basead/e/h;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/anythink/basead/e/b$b;->c()V

    :cond_1
    iget-object p1, p0, Lcom/anythink/basead/ui/BaseScreenATView$6;->a:Lcom/anythink/basead/ui/BaseScreenATView;

    iget-object v0, p1, Lcom/anythink/basead/ui/BaseScreenATView;->L:Lcom/anythink/basead/ui/animplayerview/BasePlayerView;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/anythink/basead/ui/animplayerview/BasePlayerView;->getVideoLength()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/anythink/basead/ui/BaseScreenATView;->b(J)V

    :cond_2
    iget-object p1, p0, Lcom/anythink/basead/ui/BaseScreenATView$6;->a:Lcom/anythink/basead/ui/BaseScreenATView;

    iget-boolean v0, p1, Lcom/anythink/basead/ui/BaseScreenATView;->G:Z

    if-nez v0, :cond_3

    invoke-virtual {p1}, Lcom/anythink/basead/ui/BaseScreenATView;->q()V

    return-void

    :cond_3
    invoke-virtual {p1}, Lcom/anythink/basead/ui/BaseScreenATView;->P()V

    return-void
.end method

.method public final b()V
    .locals 1

    sget-object v0, Lcom/anythink/basead/ui/BaseScreenATView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public final b(J)V
    .locals 1

    iget-object v0, p0, Lcom/anythink/basead/ui/BaseScreenATView$6;->a:Lcom/anythink/basead/ui/BaseScreenATView;

    iget-object v0, v0, Lcom/anythink/basead/ui/BaseScreenATView;->T:Lcom/anythink/basead/e/h;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/anythink/basead/e/h;->g()V

    :cond_0
    iget-object v0, p0, Lcom/anythink/basead/ui/BaseScreenATView$6;->a:Lcom/anythink/basead/ui/BaseScreenATView;

    invoke-virtual {v0, p1, p2}, Lcom/anythink/basead/ui/BaseScreenATView;->c(J)V

    iget-object p1, p0, Lcom/anythink/basead/ui/BaseScreenATView$6;->a:Lcom/anythink/basead/ui/BaseScreenATView;

    invoke-virtual {p1}, Lcom/anythink/basead/ui/BaseScreenATView;->i()Lcom/anythink/basead/c/i;

    move-result-object p1

    const/16 p2, 0x23

    iget-object v0, p0, Lcom/anythink/basead/ui/BaseScreenATView$6;->a:Lcom/anythink/basead/ui/BaseScreenATView;

    iget-object v0, v0, Lcom/anythink/basead/ui/BaseATView;->c:Lcom/anythink/core/common/f/l;

    invoke-static {p2, v0, p1}, Lcom/anythink/basead/a/a;->a(ILcom/anythink/core/common/f/l;Lcom/anythink/basead/c/i;)V

    return-void
.end method

.method public final c()V
    .locals 3

    sget-object v0, Lcom/anythink/basead/ui/BaseScreenATView;->TAG:Ljava/lang/String;

    iget-object v0, p0, Lcom/anythink/basead/ui/BaseScreenATView$6;->a:Lcom/anythink/basead/ui/BaseScreenATView;

    invoke-virtual {v0}, Lcom/anythink/basead/ui/BaseScreenATView;->i()Lcom/anythink/basead/c/i;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/basead/ui/BaseScreenATView$6;->a:Lcom/anythink/basead/ui/BaseScreenATView;

    iget-object v1, v1, Lcom/anythink/basead/ui/BaseATView;->c:Lcom/anythink/core/common/f/l;

    const/4 v2, 0x5

    invoke-static {v2, v1, v0}, Lcom/anythink/basead/a/a;->a(ILcom/anythink/core/common/f/l;Lcom/anythink/basead/c/i;)V

    iget-object v1, p0, Lcom/anythink/basead/ui/BaseScreenATView$6;->a:Lcom/anythink/basead/ui/BaseScreenATView;

    iget-object v1, v1, Lcom/anythink/basead/ui/BaseATView;->c:Lcom/anythink/core/common/f/l;

    const/16 v2, 0x1f

    invoke-static {v2, v1, v0}, Lcom/anythink/basead/a/a;->a(ILcom/anythink/core/common/f/l;Lcom/anythink/basead/c/i;)V

    iget-object v0, p0, Lcom/anythink/basead/ui/BaseScreenATView$6;->a:Lcom/anythink/basead/ui/BaseScreenATView;

    const/16 v1, 0x6b

    invoke-virtual {v0, v1}, Lcom/anythink/basead/ui/BaseATView;->a(I)V

    iget-object v0, p0, Lcom/anythink/basead/ui/BaseScreenATView$6;->a:Lcom/anythink/basead/ui/BaseScreenATView;

    iget-object v0, v0, Lcom/anythink/basead/ui/BaseScreenATView;->T:Lcom/anythink/basead/e/h;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/anythink/basead/e/b$b;->b()V

    :cond_0
    iget-object v0, p0, Lcom/anythink/basead/ui/BaseScreenATView$6;->a:Lcom/anythink/basead/ui/BaseScreenATView;

    iget-boolean v1, v0, Lcom/anythink/basead/ui/BaseScreenATView;->H:Z

    const/4 v2, 0x1

    if-nez v1, :cond_1

    iput-boolean v2, v0, Lcom/anythink/basead/ui/BaseScreenATView;->H:Z

    iget-object v0, v0, Lcom/anythink/basead/ui/BaseScreenATView;->T:Lcom/anythink/basead/e/h;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/anythink/basead/e/b$b;->c()V

    :cond_1
    iget-object v0, p0, Lcom/anythink/basead/ui/BaseScreenATView$6;->a:Lcom/anythink/basead/ui/BaseScreenATView;

    iget-object v0, v0, Lcom/anythink/basead/ui/BaseATView;->b:Lcom/anythink/core/common/f/m;

    iget-object v0, v0, Lcom/anythink/core/common/f/m;->n:Lcom/anythink/core/common/f/n;

    invoke-virtual {v0}, Lcom/anythink/core/common/f/n;->N()I

    move-result v0

    if-ne v0, v2, :cond_3

    iget-object v0, p0, Lcom/anythink/basead/ui/BaseScreenATView$6;->a:Lcom/anythink/basead/ui/BaseScreenATView;

    iput-boolean v2, v0, Lcom/anythink/basead/ui/BaseATView;->r:Z

    iget-boolean v1, v0, Lcom/anythink/basead/ui/BaseScreenATView;->G:Z

    if-nez v1, :cond_2

    invoke-virtual {v0}, Lcom/anythink/basead/ui/BaseScreenATView;->q()V

    return-void

    :cond_2
    invoke-virtual {v0}, Lcom/anythink/basead/ui/BaseScreenATView;->P()V

    return-void

    :cond_3
    iget-object v0, p0, Lcom/anythink/basead/ui/BaseScreenATView$6;->a:Lcom/anythink/basead/ui/BaseScreenATView;

    invoke-virtual {v0}, Lcom/anythink/basead/ui/BaseScreenATView;->L()Lcom/anythink/basead/ui/CloseImageView;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/anythink/basead/ui/BaseScreenATView$6;->a:Lcom/anythink/basead/ui/BaseScreenATView;

    invoke-virtual {v0}, Lcom/anythink/basead/ui/BaseScreenATView;->L()Lcom/anythink/basead/ui/CloseImageView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/anythink/basead/ui/BaseATView;->a(Landroid/view/View;)V

    :cond_4
    iget-object v0, p0, Lcom/anythink/basead/ui/BaseScreenATView$6;->a:Lcom/anythink/basead/ui/BaseScreenATView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/anythink/basead/ui/BaseScreenATView;->c(I)V

    return-void
.end method

.method public final d()V
    .locals 3

    iget-object v0, p0, Lcom/anythink/basead/ui/BaseScreenATView$6;->a:Lcom/anythink/basead/ui/BaseScreenATView;

    iget-object v1, v0, Lcom/anythink/basead/ui/BaseScreenATView;->L:Lcom/anythink/basead/ui/animplayerview/BasePlayerView;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/anythink/basead/ui/animplayerview/BasePlayerView;->getCurrentPosition()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/anythink/basead/ui/BaseScreenATView;->c(Lcom/anythink/basead/ui/BaseScreenATView;J)V

    :cond_0
    iget-object v0, p0, Lcom/anythink/basead/ui/BaseScreenATView$6;->a:Lcom/anythink/basead/ui/BaseScreenATView;

    invoke-virtual {v0}, Lcom/anythink/basead/ui/BaseScreenATView;->i()Lcom/anythink/basead/c/i;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/basead/ui/BaseScreenATView$6;->a:Lcom/anythink/basead/ui/BaseScreenATView;

    invoke-virtual {v1}, Lcom/anythink/basead/ui/BaseATView;->j()Lcom/anythink/basead/c/a;

    move-result-object v1

    iput-object v1, v0, Lcom/anythink/basead/c/i;->g:Lcom/anythink/basead/c/a;

    const/16 v1, 0xe

    iget-object v2, p0, Lcom/anythink/basead/ui/BaseScreenATView$6;->a:Lcom/anythink/basead/ui/BaseScreenATView;

    iget-object v2, v2, Lcom/anythink/basead/ui/BaseATView;->c:Lcom/anythink/core/common/f/l;

    invoke-static {v1, v2, v0}, Lcom/anythink/basead/a/a;->a(ILcom/anythink/core/common/f/l;Lcom/anythink/basead/c/i;)V

    iget-object v0, p0, Lcom/anythink/basead/ui/BaseScreenATView$6;->a:Lcom/anythink/basead/ui/BaseScreenATView;

    iget-object v0, v0, Lcom/anythink/basead/ui/BaseATView;->b:Lcom/anythink/core/common/f/m;

    iget-object v0, v0, Lcom/anythink/core/common/f/m;->n:Lcom/anythink/core/common/f/n;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/anythink/core/common/f/n;->A()I

    move-result v0

    if-eq v0, v1, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/anythink/basead/ui/BaseScreenATView$6;->a:Lcom/anythink/basead/ui/BaseScreenATView;

    invoke-virtual {v0}, Lcom/anythink/basead/ui/BaseScreenATView;->M()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/anythink/basead/ui/BaseScreenATView$6;->a:Lcom/anythink/basead/ui/BaseScreenATView;

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Lcom/anythink/basead/ui/BaseScreenATView;->a(II)V

    :cond_3
    return-void
.end method

.method public final e()V
    .locals 3

    sget-object v0, Lcom/anythink/basead/ui/BaseScreenATView;->TAG:Ljava/lang/String;

    iget-object v0, p0, Lcom/anythink/basead/ui/BaseScreenATView$6;->a:Lcom/anythink/basead/ui/BaseScreenATView;

    invoke-virtual {v0}, Lcom/anythink/basead/ui/BaseScreenATView;->i()Lcom/anythink/basead/c/i;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/basead/ui/BaseScreenATView$6;->a:Lcom/anythink/basead/ui/BaseScreenATView;

    invoke-virtual {v1}, Lcom/anythink/basead/ui/BaseATView;->j()Lcom/anythink/basead/c/a;

    move-result-object v1

    iput-object v1, v0, Lcom/anythink/basead/c/i;->g:Lcom/anythink/basead/c/a;

    iget-object v1, p0, Lcom/anythink/basead/ui/BaseScreenATView$6;->a:Lcom/anythink/basead/ui/BaseScreenATView;

    iget-object v1, v1, Lcom/anythink/basead/ui/BaseATView;->c:Lcom/anythink/core/common/f/l;

    const/16 v2, 0xc

    invoke-static {v2, v1, v0}, Lcom/anythink/basead/a/a;->a(ILcom/anythink/core/common/f/l;Lcom/anythink/basead/c/i;)V

    return-void
.end method

.method public final f()V
    .locals 3

    sget-object v0, Lcom/anythink/basead/ui/BaseScreenATView;->TAG:Ljava/lang/String;

    iget-object v0, p0, Lcom/anythink/basead/ui/BaseScreenATView$6;->a:Lcom/anythink/basead/ui/BaseScreenATView;

    invoke-virtual {v0}, Lcom/anythink/basead/ui/BaseScreenATView;->i()Lcom/anythink/basead/c/i;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/basead/ui/BaseScreenATView$6;->a:Lcom/anythink/basead/ui/BaseScreenATView;

    invoke-virtual {v1}, Lcom/anythink/basead/ui/BaseATView;->j()Lcom/anythink/basead/c/a;

    move-result-object v1

    iput-object v1, v0, Lcom/anythink/basead/c/i;->g:Lcom/anythink/basead/c/a;

    iget-object v1, p0, Lcom/anythink/basead/ui/BaseScreenATView$6;->a:Lcom/anythink/basead/ui/BaseScreenATView;

    iget-object v1, v1, Lcom/anythink/basead/ui/BaseATView;->c:Lcom/anythink/core/common/f/l;

    const/16 v2, 0xd

    invoke-static {v2, v1, v0}, Lcom/anythink/basead/a/a;->a(ILcom/anythink/core/common/f/l;Lcom/anythink/basead/c/i;)V

    return-void
.end method

.method public final g()V
    .locals 4

    new-instance v0, Lcom/anythink/basead/a/b/f;

    iget-object v1, p0, Lcom/anythink/basead/ui/BaseScreenATView$6;->a:Lcom/anythink/basead/ui/BaseScreenATView;

    iget-object v2, v1, Lcom/anythink/basead/ui/BaseATView;->b:Lcom/anythink/core/common/f/m;

    iget-object v3, v2, Lcom/anythink/core/common/f/m;->b:Ljava/lang/String;

    iget-object v1, v1, Lcom/anythink/basead/ui/BaseATView;->c:Lcom/anythink/core/common/f/l;

    iget-object v2, v2, Lcom/anythink/core/common/f/m;->n:Lcom/anythink/core/common/f/n;

    invoke-direct {v0, v3, v1, v2}, Lcom/anythink/basead/a/b/f;-><init>(Ljava/lang/String;Lcom/anythink/core/common/f/l;Lcom/anythink/core/common/f/n;)V

    invoke-virtual {v0}, Lcom/anythink/basead/a/b/f;->b()V

    return-void
.end method
