.class public final Lcom/anythink/basead/a/b/e;
.super Lcom/anythink/core/common/res/image/b;
.source ""


# instance fields
.field private a:Ljava/lang/String;

.field private b:Z

.field private j:Z

.field private k:Ljava/lang/String;

.field private l:I

.field private m:Lcom/anythink/core/common/f/l;


# direct methods
.method public constructor <init>(Ljava/lang/String;ZLcom/anythink/core/common/f/l;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p4}, Lcom/anythink/core/common/res/image/b;-><init>(Ljava/lang/String;)V

    iput-object p3, p0, Lcom/anythink/basead/a/b/e;->m:Lcom/anythink/core/common/f/l;

    iput-object p1, p0, Lcom/anythink/basead/a/b/e;->a:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/anythink/basead/a/b/e;->b:Z

    invoke-virtual {p3}, Lcom/anythink/core/common/f/l;->B()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/anythink/basead/a/b/e;->j:Z

    invoke-virtual {p3}, Lcom/anythink/core/common/f/l;->t()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/anythink/basead/a/b/e;->k:Ljava/lang/String;

    invoke-virtual {p3}, Lcom/anythink/core/common/f/l;->d()I

    move-result p1

    iput p1, p0, Lcom/anythink/basead/a/b/e;->l:I

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public final a(Lcom/anythink/core/common/o/b/d;)V
    .locals 2

    iget-boolean v0, p0, Lcom/anythink/basead/a/b/e;->b:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/anythink/core/common/o/b/b;->a()Lcom/anythink/core/common/o/b/b;

    move-result-object v0

    const/4 v1, 0x5

    :goto_0
    invoke-virtual {v0, p1, v1}, Lcom/anythink/core/common/o/b/b;->a(Lcom/anythink/core/common/o/b/d;I)V

    return-void

    :cond_0
    invoke-static {}, Lcom/anythink/core/common/o/b/b;->a()Lcom/anythink/core/common/o/b/b;

    move-result-object v0

    const/4 v1, 0x4

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 16

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/anythink/basead/a/b/e;->j:Z

    if-eqz v1, :cond_0

    iget-object v2, v0, Lcom/anythink/basead/a/b/e;->a:Ljava/lang/String;

    iget-object v3, v0, Lcom/anythink/basead/a/b/e;->k:Ljava/lang/String;

    iget-object v4, v0, Lcom/anythink/core/common/res/image/b;->c:Ljava/lang/String;

    iget-wide v6, v0, Lcom/anythink/core/common/res/image/b;->i:J

    iget-wide v9, v0, Lcom/anythink/core/common/res/image/b;->e:J

    iget v13, v0, Lcom/anythink/basead/a/b/e;->l:I

    iget-wide v14, v0, Lcom/anythink/core/common/res/image/b;->h:J

    iget-wide v11, v0, Lcom/anythink/core/common/res/image/b;->f:J

    sub-long/2addr v14, v11

    const-string v5, "0"

    move-object/from16 v8, p2

    const-wide/16 v11, 0x0

    invoke-static/range {v2 .. v15}, Lcom/anythink/core/common/n/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JJIJ)V

    :cond_0
    invoke-static {}, Lcom/anythink/basead/a/b/d;->a()Lcom/anythink/basead/a/b/d;

    move-result-object v1

    iget-object v2, v0, Lcom/anythink/core/common/res/image/b;->c:Ljava/lang/String;

    invoke-static/range {p1 .. p2}, Lcom/anythink/basead/c/f;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/basead/c/e;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/anythink/basead/a/b/d;->a(Ljava/lang/String;Lcom/anythink/basead/c/e;)V

    return-void
.end method

.method public final a(Ljava/io/InputStream;)Z
    .locals 1

    invoke-static {}, Lcom/anythink/basead/a/e;->a()Lcom/anythink/basead/a/e;

    iget-object v0, p0, Lcom/anythink/core/common/res/image/b;->c:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/anythink/basead/a/e;->a(Ljava/lang/String;Ljava/io/InputStream;)Z

    move-result p1

    return p1
.end method

.method public final b()V
    .locals 0

    return-void
.end method

.method public final c()V
    .locals 19

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/anythink/basead/a/b/e;->j:Z

    if-eqz v1, :cond_0

    const/16 v1, 0x1e

    iget-object v2, v0, Lcom/anythink/basead/a/b/e;->m:Lcom/anythink/core/common/f/l;

    new-instance v3, Lcom/anythink/basead/c/i;

    const-string v4, ""

    invoke-direct {v3, v4, v4}, Lcom/anythink/basead/c/i;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1, v2, v3}, Lcom/anythink/basead/a/a;->a(ILcom/anythink/core/common/f/l;Lcom/anythink/basead/c/i;)V

    iget-object v5, v0, Lcom/anythink/basead/a/b/e;->a:Ljava/lang/String;

    iget-object v6, v0, Lcom/anythink/basead/a/b/e;->k:Ljava/lang/String;

    iget-object v7, v0, Lcom/anythink/core/common/res/image/b;->c:Ljava/lang/String;

    iget-wide v9, v0, Lcom/anythink/core/common/res/image/b;->i:J

    iget-wide v12, v0, Lcom/anythink/core/common/res/image/b;->e:J

    iget-wide v14, v0, Lcom/anythink/core/common/res/image/b;->g:J

    iget v1, v0, Lcom/anythink/basead/a/b/e;->l:I

    iget-wide v2, v0, Lcom/anythink/core/common/res/image/b;->h:J

    move-wide/from16 v16, v12

    iget-wide v11, v0, Lcom/anythink/core/common/res/image/b;->f:J

    sub-long/2addr v2, v11

    const-string v8, "1"

    const/4 v4, 0x0

    move-object v11, v4

    move-wide/from16 v12, v16

    move/from16 v16, v1

    move-wide/from16 v17, v2

    invoke-static/range {v5 .. v18}, Lcom/anythink/core/common/n/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JJIJ)V

    :cond_0
    invoke-static {}, Lcom/anythink/basead/a/b/d;->a()Lcom/anythink/basead/a/b/d;

    move-result-object v1

    iget-object v2, v0, Lcom/anythink/core/common/res/image/b;->c:Ljava/lang/String;

    const/16 v3, 0x64

    invoke-virtual {v1, v2, v3}, Lcom/anythink/basead/a/b/d;->a(Ljava/lang/String;I)V

    return-void
.end method
