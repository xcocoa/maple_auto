.class public Lcom/anythink/expressad/video/module/a/a/o;
.super Lcom/anythink/expressad/video/module/a/a/k;
.source ""


# instance fields
.field private ag:Z

.field public ah:I

.field private ai:Z

.field private aj:Z

.field private ak:Z

.field private al:Z

.field private am:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private an:I


# direct methods
.method public constructor <init>(Lcom/anythink/expressad/foundation/d/c;Lcom/anythink/expressad/videocommon/c/c;Lcom/anythink/expressad/videocommon/b/c;Ljava/lang/String;Ljava/lang/String;Lcom/anythink/expressad/video/module/a/a;IZ)V
    .locals 10

    move-object v9, p0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move-object v3, p2

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-direct/range {v0 .. v8}, Lcom/anythink/expressad/video/module/a/a/k;-><init>(Lcom/anythink/expressad/foundation/d/c;Lcom/anythink/expressad/videocommon/b/c;Lcom/anythink/expressad/videocommon/c/c;Ljava/lang/String;Ljava/lang/String;Lcom/anythink/expressad/video/module/a/a;IZ)V

    const/4 v0, 0x0

    iput-boolean v0, v9, Lcom/anythink/expressad/video/module/a/a/o;->al:Z

    iput v0, v9, Lcom/anythink/expressad/video/module/a/a/o;->ah:I

    const/4 v0, -0x1

    iput v0, v9, Lcom/anythink/expressad/video/module/a/a/o;->an:I

    iget-boolean v0, v9, Lcom/anythink/expressad/video/module/a/a/k;->W:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/anythink/expressad/foundation/d/c;->R()Ljava/util/Map;

    move-result-object v0

    iput-object v0, v9, Lcom/anythink/expressad/video/module/a/a/o;->am:Ljava/util/Map;

    :cond_0
    invoke-virtual {p1}, Lcom/anythink/expressad/foundation/d/c;->i()I

    move-result v0

    iput v0, v9, Lcom/anythink/expressad/video/module/a/a/o;->ah:I

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/Object;)V
    .locals 7

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eq p1, v0, :cond_a

    const/4 v2, 0x6

    if-eq p1, v2, :cond_a

    const/4 v2, 0x7

    if-eq p1, v2, :cond_8

    const/16 v0, 0xb

    const/4 v2, 0x0

    if-eq p1, v0, :cond_7

    const/16 v0, 0xc

    if-eq p1, v0, :cond_6

    const/16 v0, 0xf

    if-eq p1, v0, :cond_0

    const/16 v0, 0x10

    if-eq p1, v0, :cond_a

    goto/16 :goto_2

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/anythink/expressad/video/module/a/a/k;->e()V

    invoke-virtual {p0}, Lcom/anythink/expressad/video/module/a/a/k;->d()V

    invoke-virtual {p0}, Lcom/anythink/expressad/video/module/a/a/k;->c()V

    if-eqz p2, :cond_1

    instance-of v0, p2, Lcom/anythink/expressad/video/module/AnythinkVideoView$a;

    if-eqz v0, :cond_1

    move-object v0, p2

    check-cast v0, Lcom/anythink/expressad/video/module/AnythinkVideoView$a;

    iget v2, v0, Lcom/anythink/expressad/video/module/AnythinkVideoView$a;->a:I

    move-object v0, p2

    check-cast v0, Lcom/anythink/expressad/video/module/AnythinkVideoView$a;

    iget v0, v0, Lcom/anythink/expressad/video/module/AnythinkVideoView$a;->b:I

    move v6, v2

    move v2, v0

    move v0, v6

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez v2, :cond_2

    iget-object v3, p0, Lcom/anythink/expressad/video/module/a/a/k;->X:Lcom/anythink/expressad/foundation/d/c;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/anythink/expressad/out/j;->bi()I

    move-result v2

    :cond_2
    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v3

    invoke-virtual {v3}, Lcom/anythink/core/common/b/n;->f()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/anythink/expressad/video/module/a/a/k;->X:Lcom/anythink/expressad/foundation/d/c;

    iget v5, p0, Lcom/anythink/expressad/video/module/a/a/k;->af:I

    invoke-static {v3, v4, v0, v2, v5}, Lcom/anythink/expressad/video/module/b/a;->a(Landroid/content/Context;Lcom/anythink/expressad/foundation/d/c;III)V

    iget-object v3, p0, Lcom/anythink/expressad/video/module/a/a/k;->X:Lcom/anythink/expressad/foundation/d/c;

    iget-object v4, p0, Lcom/anythink/expressad/video/module/a/a/o;->am:Ljava/util/Map;

    iget-object v5, p0, Lcom/anythink/expressad/video/module/a/a/k;->ac:Ljava/lang/String;

    invoke-static {v3, v4, v5, v0}, Lcom/anythink/expressad/video/module/b/a;->a(Lcom/anythink/expressad/foundation/d/c;Ljava/util/Map;Ljava/lang/String;I)V

    iget-boolean v3, p0, Lcom/anythink/expressad/video/module/a/a/o;->ak:Z

    if-nez v3, :cond_3

    iput-boolean v1, p0, Lcom/anythink/expressad/video/module/a/a/o;->ak:Z

    iget-object v3, p0, Lcom/anythink/expressad/video/module/a/a/k;->X:Lcom/anythink/expressad/foundation/d/c;

    iget-object v4, p0, Lcom/anythink/expressad/video/module/a/a/k;->ac:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/anythink/expressad/video/module/b/a;->a(Lcom/anythink/expressad/foundation/d/c;Ljava/lang/String;)V

    :cond_3
    iget-boolean v3, p0, Lcom/anythink/expressad/video/module/a/a/o;->al:Z

    if-nez v3, :cond_5

    iget v3, p0, Lcom/anythink/expressad/video/module/a/a/o;->ah:I

    if-nez v3, :cond_4

    goto :goto_1

    :cond_4
    move v2, v3

    :goto_1
    if-lt v0, v2, :cond_5

    iput-boolean v1, p0, Lcom/anythink/expressad/video/module/a/a/o;->al:Z

    const/16 p1, 0x11

    :cond_5
    iput v0, p0, Lcom/anythink/expressad/video/module/a/a/o;->an:I

    goto/16 :goto_2

    :cond_6
    invoke-virtual {p0}, Lcom/anythink/expressad/video/module/a/a/k;->b()V

    invoke-static {}, Lcom/anythink/expressad/videocommon/b/e;->a()Lcom/anythink/expressad/videocommon/b/e;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/anythink/expressad/videocommon/b/e;->a(Z)V

    goto :goto_2

    :cond_7
    invoke-static {}, Lcom/anythink/expressad/videocommon/b/e;->a()Lcom/anythink/expressad/videocommon/b/e;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/anythink/expressad/videocommon/b/e;->a(Z)V

    invoke-virtual {p0}, Lcom/anythink/expressad/video/module/a/a/k;->b()V

    goto :goto_2

    :cond_8
    iget-boolean v2, p0, Lcom/anythink/expressad/video/module/a/a/k;->W:Z

    if-eqz v2, :cond_b

    if-eqz p2, :cond_b

    instance-of v2, p2, Ljava/lang/Integer;

    if-eqz v2, :cond_b

    move-object v2, p2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v0, :cond_9

    iget-boolean v0, p0, Lcom/anythink/expressad/video/module/a/a/o;->ai:Z

    if-nez v0, :cond_b

    iput-boolean v1, p0, Lcom/anythink/expressad/video/module/a/a/o;->ai:Z

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/n;->f()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/expressad/video/module/a/a/k;->X:Lcom/anythink/expressad/foundation/d/c;

    invoke-static {v0, v1}, Lcom/anythink/expressad/video/module/b/a;->b(Landroid/content/Context;Lcom/anythink/expressad/foundation/d/c;)V

    goto :goto_2

    :cond_9
    if-ne v2, v1, :cond_b

    iget-boolean v0, p0, Lcom/anythink/expressad/video/module/a/a/o;->ag:Z

    if-nez v0, :cond_b

    iput-boolean v1, p0, Lcom/anythink/expressad/video/module/a/a/o;->ag:Z

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/n;->f()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/expressad/video/module/a/a/k;->X:Lcom/anythink/expressad/foundation/d/c;

    invoke-static {v0, v1}, Lcom/anythink/expressad/video/module/b/a;->c(Landroid/content/Context;Lcom/anythink/expressad/foundation/d/c;)V

    goto :goto_2

    :cond_a
    iget-boolean v0, p0, Lcom/anythink/expressad/video/module/a/a/k;->W:Z

    if-eqz v0, :cond_b

    iget-boolean v0, p0, Lcom/anythink/expressad/video/module/a/a/o;->aj:Z

    if-nez v0, :cond_b

    iput-boolean v1, p0, Lcom/anythink/expressad/video/module/a/a/o;->aj:Z

    invoke-virtual {p0}, Lcom/anythink/expressad/video/module/a/a/k;->b()V

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/n;->f()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/expressad/video/module/a/a/k;->X:Lcom/anythink/expressad/foundation/d/c;

    invoke-static {v0, v1}, Lcom/anythink/expressad/video/module/b/a;->d(Landroid/content/Context;Lcom/anythink/expressad/foundation/d/c;)V

    :cond_b
    :goto_2
    iget-object v0, p0, Lcom/anythink/expressad/video/module/a/a/k;->ae:Lcom/anythink/expressad/video/module/a/a;

    invoke-interface {v0, p1, p2}, Lcom/anythink/expressad/video/module/a/a;->a(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    return-void
.end method
