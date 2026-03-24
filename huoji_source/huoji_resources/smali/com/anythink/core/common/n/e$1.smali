.class public final Lcom/anythink/core/common/n/e$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/core/common/n/e;->a(Ljava/lang/String;Ljava/lang/String;ZILcom/anythink/core/d/f;Lcom/anythink/core/common/f/b;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/anythink/core/common/f/c;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/anythink/core/common/f/b;

.field public final synthetic b:Lcom/anythink/core/d/f;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Z

.field public final synthetic f:I

.field public final synthetic g:Ljava/lang/String;

.field public final synthetic h:Ljava/lang/String;

.field public final synthetic i:J

.field public final synthetic j:Ljava/util/Map;

.field public final synthetic k:Lcom/anythink/core/common/f/c;


# direct methods
.method public constructor <init>(Lcom/anythink/core/common/f/b;Lcom/anythink/core/d/f;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;Ljava/lang/String;JLjava/util/Map;Lcom/anythink/core/common/f/c;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/core/common/n/e$1;->a:Lcom/anythink/core/common/f/b;

    iput-object p2, p0, Lcom/anythink/core/common/n/e$1;->b:Lcom/anythink/core/d/f;

    iput-object p3, p0, Lcom/anythink/core/common/n/e$1;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/anythink/core/common/n/e$1;->d:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/anythink/core/common/n/e$1;->e:Z

    iput p6, p0, Lcom/anythink/core/common/n/e$1;->f:I

    iput-object p7, p0, Lcom/anythink/core/common/n/e$1;->g:Ljava/lang/String;

    iput-object p8, p0, Lcom/anythink/core/common/n/e$1;->h:Ljava/lang/String;

    iput-wide p9, p0, Lcom/anythink/core/common/n/e$1;->i:J

    iput-object p11, p0, Lcom/anythink/core/common/n/e$1;->j:Ljava/util/Map;

    iput-object p12, p0, Lcom/anythink/core/common/n/e$1;->k:Lcom/anythink/core/common/f/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    iget-object v0, p0, Lcom/anythink/core/common/n/e$1;->a:Lcom/anythink/core/common/f/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/anythink/core/common/f/b;->h()Lcom/anythink/core/common/f/h;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    new-instance v1, Lcom/anythink/core/common/f/k;

    iget-object v2, p0, Lcom/anythink/core/common/n/e$1;->b:Lcom/anythink/core/d/f;

    const-string v3, ""

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/anythink/core/d/f;->ah()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_1
    move-object v2, v3

    :goto_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/anythink/core/common/f/h;->P()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    :cond_2
    move-object v4, v3

    :goto_2
    invoke-direct {v1, v2, v4}, Lcom/anythink/core/common/f/k;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "1004632"

    iput-object v2, v1, Lcom/anythink/core/common/f/k;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/anythink/core/common/n/e$1;->c:Ljava/lang/String;

    iput-object v2, v1, Lcom/anythink/core/common/f/k;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/anythink/core/common/n/e$1;->d:Ljava/lang/String;

    iput-object v2, v1, Lcom/anythink/core/common/f/k;->d:Ljava/lang/String;

    const-string v2, "0"

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/anythink/core/common/f/h;->Q()I

    move-result v4

    :goto_3
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/anythink/core/common/f/k;->g:Ljava/lang/String;

    goto :goto_4

    :cond_3
    iget-object v4, p0, Lcom/anythink/core/common/n/e$1;->b:Lcom/anythink/core/d/f;

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Lcom/anythink/core/d/f;->ao()I

    move-result v4

    goto :goto_3

    :cond_4
    iput-object v2, v1, Lcom/anythink/core/common/f/k;->g:Ljava/lang/String;

    :goto_4
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/anythink/core/common/f/h;->N()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_5

    :cond_5
    move-object v4, v2

    :goto_5
    iput-object v4, v1, Lcom/anythink/core/common/f/k;->k:Ljava/lang/String;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/anythink/core/common/f/au;->af()I

    move-result v4

    :goto_6
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/anythink/core/common/f/k;->l:Ljava/lang/String;

    goto :goto_7

    :cond_6
    iget-object v4, p0, Lcom/anythink/core/common/n/e$1;->b:Lcom/anythink/core/d/f;

    if-eqz v4, :cond_7

    invoke-virtual {v4}, Lcom/anythink/core/d/f;->Z()I

    move-result v4

    goto :goto_6

    :cond_7
    :goto_7
    iget-boolean v4, p0, Lcom/anythink/core/common/n/e$1;->e:Z

    const-string v5, "1"

    if-eqz v4, :cond_8

    move-object v4, v5

    goto :goto_8

    :cond_8
    move-object v4, v2

    :goto_8
    iput-object v4, v1, Lcom/anythink/core/common/f/k;->m:Ljava/lang/String;

    iget v4, p0, Lcom/anythink/core/common/n/e$1;->f:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/anythink/core/common/f/k;->n:Ljava/lang/String;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/anythink/core/common/f/h;->I()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_9

    :cond_9
    const-string v4, "-1"

    :goto_9
    iput-object v4, v1, Lcom/anythink/core/common/f/k;->o:Ljava/lang/String;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lcom/anythink/core/common/f/h;->F()Ljava/lang/String;

    move-result-object v4

    goto :goto_a

    :cond_a
    move-object v4, v3

    :goto_a
    iput-object v4, v1, Lcom/anythink/core/common/f/k;->p:Ljava/lang/String;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lcom/anythink/core/common/f/h;->P()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_b

    :cond_b
    move-object v4, v3

    :goto_b
    iput-object v4, v1, Lcom/anythink/core/common/f/k;->q:Ljava/lang/String;

    if-eqz v0, :cond_c

    iget-object v4, v0, Lcom/anythink/core/common/f/h;->u:Ljava/lang/String;

    goto :goto_c

    :cond_c
    move-object v4, v3

    :goto_c
    iput-object v4, v1, Lcom/anythink/core/common/f/k;->r:Ljava/lang/String;

    iget-object v4, p0, Lcom/anythink/core/common/n/e$1;->g:Ljava/lang/String;

    iput-object v4, v1, Lcom/anythink/core/common/f/k;->s:Ljava/lang/String;

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Lcom/anythink/core/common/f/au;->ai()Ljava/lang/String;

    move-result-object v4

    goto :goto_d

    :cond_d
    iget-object v4, p0, Lcom/anythink/core/common/n/e$1;->c:Ljava/lang/String;

    :goto_d
    iput-object v4, v1, Lcom/anythink/core/common/f/k;->t:Ljava/lang/String;

    if-eqz v0, :cond_e

    iget-object v4, p0, Lcom/anythink/core/common/n/e$1;->c:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/anythink/core/common/f/au;->ai()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_e

    iput-object v5, v1, Lcom/anythink/core/common/f/k;->u:Ljava/lang/String;

    goto :goto_e

    :cond_e
    iput-object v2, v1, Lcom/anythink/core/common/f/k;->u:Ljava/lang/String;

    :goto_e
    if-eqz v0, :cond_f

    iget v4, v0, Lcom/anythink/core/common/f/h;->q:I

    const/4 v6, 0x3

    if-ne v4, v6, :cond_f

    move-object v2, v5

    :cond_f
    iput-object v2, v1, Lcom/anythink/core/common/f/k;->v:Ljava/lang/String;

    iget-object v2, p0, Lcom/anythink/core/common/n/e$1;->h:Ljava/lang/String;

    iput-object v2, v1, Lcom/anythink/core/common/f/k;->w:Ljava/lang/String;

    iget-object v2, p0, Lcom/anythink/core/common/n/e$1;->a:Lcom/anythink/core/common/f/b;

    if-eqz v2, :cond_10

    invoke-virtual {v2}, Lcom/anythink/core/common/f/b;->k()Ljava/lang/String;

    move-result-object v2

    const-string v4, "3"

    if-ne v2, v4, :cond_10

    iput-object v5, v1, Lcom/anythink/core/common/f/k;->y:Ljava/lang/String;

    :cond_10
    iget-wide v4, p0, Lcom/anythink/core/common/n/e$1;->i:J

    const-wide/16 v6, 0x0

    cmp-long v2, v4, v6

    if-lez v2, :cond_11

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/anythink/core/common/f/k;->x:Ljava/lang/String;

    :cond_11
    iget-object v2, p0, Lcom/anythink/core/common/n/e$1;->b:Lcom/anythink/core/d/f;

    if-eqz v2, :cond_12

    invoke-virtual {v2}, Lcom/anythink/core/d/f;->ae()Ljava/lang/String;

    move-result-object v2

    goto :goto_f

    :cond_12
    move-object v2, v3

    :goto_f
    iput-object v2, v1, Lcom/anythink/core/common/f/k;->j:Ljava/lang/String;

    iget-object v2, p0, Lcom/anythink/core/common/n/e$1;->b:Lcom/anythink/core/d/f;

    if-eqz v2, :cond_13

    invoke-virtual {v2}, Lcom/anythink/core/d/f;->ah()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    :cond_13
    iput-object v3, v1, Lcom/anythink/core/common/f/k;->A:Ljava/lang/String;

    if-eqz v0, :cond_14

    invoke-virtual {v0}, Lcom/anythink/core/common/f/au;->aa()Ljava/lang/String;

    move-result-object v2

    :goto_10
    iput-object v2, v1, Lcom/anythink/core/common/f/k;->C:Ljava/lang/String;

    goto :goto_11

    :cond_14
    iget-object v2, p0, Lcom/anythink/core/common/n/e$1;->b:Lcom/anythink/core/d/f;

    if-eqz v2, :cond_15

    invoke-virtual {v2}, Lcom/anythink/core/d/f;->q()Ljava/lang/String;

    move-result-object v2

    goto :goto_10

    :cond_15
    :goto_11
    if-eqz v0, :cond_16

    invoke-virtual {v0}, Lcom/anythink/core/common/f/au;->ab()Ljava/lang/String;

    move-result-object v0

    :goto_12
    iput-object v0, v1, Lcom/anythink/core/common/f/k;->D:Ljava/lang/String;

    goto :goto_13

    :cond_16
    iget-object v0, p0, Lcom/anythink/core/common/n/e$1;->j:Ljava/util/Map;

    if-eqz v0, :cond_17

    const-string v2, "cp_placement_id"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_17

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_12

    :cond_17
    :goto_13
    iget-object v0, p0, Lcom/anythink/core/common/n/e$1;->k:Lcom/anythink/core/common/f/c;

    if-eqz v0, :cond_18

    invoke-virtual {v0}, Lcom/anythink/core/common/f/c;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/anythink/core/common/f/k;->F:Ljava/lang/String;

    iget-object v0, p0, Lcom/anythink/core/common/n/e$1;->k:Lcom/anythink/core/common/f/c;

    invoke-virtual {v0}, Lcom/anythink/core/common/f/c;->b()I

    move-result v0

    iput v0, v1, Lcom/anythink/core/common/f/k;->G:I

    iget-object v0, p0, Lcom/anythink/core/common/n/e$1;->k:Lcom/anythink/core/common/f/c;

    invoke-virtual {v0}, Lcom/anythink/core/common/f/c;->c()I

    move-result v0

    iput v0, v1, Lcom/anythink/core/common/f/k;->H:I

    :cond_18
    invoke-static {v1}, Lcom/anythink/core/common/n/e;->a(Lcom/anythink/core/common/f/k;)V

    return-void
.end method
