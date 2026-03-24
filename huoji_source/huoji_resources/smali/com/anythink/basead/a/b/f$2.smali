.class public final Lcom/anythink/basead/a/b/f$2;
.super Lcom/anythink/core/common/res/a/a$b;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/basead/a/b/f;-><init>(Ljava/lang/String;Lcom/anythink/core/common/f/l;Lcom/anythink/core/common/f/n;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/anythink/core/common/f/l;

.field public final synthetic b:Lcom/anythink/basead/a/b/f;


# direct methods
.method public constructor <init>(Lcom/anythink/basead/a/b/f;Lcom/anythink/core/common/f/l;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/basead/a/b/f$2;->b:Lcom/anythink/basead/a/b/f;

    iput-object p2, p0, Lcom/anythink/basead/a/b/f$2;->a:Lcom/anythink/core/common/f/l;

    invoke-direct {p0}, Lcom/anythink/core/common/res/a/a$b;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(JJJJJ)V
    .locals 16

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/anythink/basead/a/b/f$2;->a:Lcom/anythink/core/common/f/l;

    new-instance v2, Lcom/anythink/basead/c/i;

    const-string v3, ""

    invoke-direct {v2, v3, v3}, Lcom/anythink/basead/c/i;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0x1e

    invoke-static {v3, v1, v2}, Lcom/anythink/basead/a/a;->a(ILcom/anythink/core/common/f/l;Lcom/anythink/basead/c/i;)V

    iget-object v1, v0, Lcom/anythink/basead/a/b/f$2;->b:Lcom/anythink/basead/a/b/f;

    invoke-static {v1}, Lcom/anythink/basead/a/b/f;->c(Lcom/anythink/basead/a/b/f;)Ljava/lang/String;

    move-result-object v2

    iget-object v1, v0, Lcom/anythink/basead/a/b/f$2;->b:Lcom/anythink/basead/a/b/f;

    invoke-static {v1}, Lcom/anythink/basead/a/b/f;->d(Lcom/anythink/basead/a/b/f;)Ljava/lang/String;

    move-result-object v3

    iget-object v1, v0, Lcom/anythink/basead/a/b/f$2;->b:Lcom/anythink/basead/a/b/f;

    invoke-static {v1}, Lcom/anythink/basead/a/b/f;->b(Lcom/anythink/basead/a/b/f;)Ljava/lang/String;

    move-result-object v4

    iget-object v1, v0, Lcom/anythink/basead/a/b/f$2;->b:Lcom/anythink/basead/a/b/f;

    invoke-static {v1}, Lcom/anythink/basead/a/b/f;->e(Lcom/anythink/basead/a/b/f;)I

    move-result v13

    sub-long v14, p9, p7

    const-string v5, "1"

    const/4 v8, 0x0

    move-wide/from16 v6, p1

    move-wide/from16 v9, p3

    move-wide/from16 v11, p5

    invoke-static/range {v2 .. v15}, Lcom/anythink/core/common/n/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JJIJ)V

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;JJJJ)V
    .locals 16

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/anythink/basead/a/b/f$2;->b:Lcom/anythink/basead/a/b/f;

    invoke-static {v1}, Lcom/anythink/basead/a/b/f;->c(Lcom/anythink/basead/a/b/f;)Ljava/lang/String;

    move-result-object v2

    iget-object v1, v0, Lcom/anythink/basead/a/b/f$2;->b:Lcom/anythink/basead/a/b/f;

    invoke-static {v1}, Lcom/anythink/basead/a/b/f;->d(Lcom/anythink/basead/a/b/f;)Ljava/lang/String;

    move-result-object v3

    iget-object v1, v0, Lcom/anythink/basead/a/b/f$2;->b:Lcom/anythink/basead/a/b/f;

    invoke-static {v1}, Lcom/anythink/basead/a/b/f;->b(Lcom/anythink/basead/a/b/f;)Ljava/lang/String;

    move-result-object v4

    iget-object v1, v0, Lcom/anythink/basead/a/b/f$2;->b:Lcom/anythink/basead/a/b/f;

    invoke-static {v1}, Lcom/anythink/basead/a/b/f;->e(Lcom/anythink/basead/a/b/f;)I

    move-result v13

    sub-long v14, p9, p7

    const-string v5, "0"

    const-wide/16 v11, 0x0

    move-wide/from16 v6, p3

    move-object/from16 v8, p2

    move-wide/from16 v9, p5

    invoke-static/range {v2 .. v15}, Lcom/anythink/core/common/n/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JJIJ)V

    invoke-static {}, Lcom/anythink/basead/a/b/d;->a()Lcom/anythink/basead/a/b/d;

    move-result-object v1

    iget-object v2, v0, Lcom/anythink/basead/a/b/f$2;->b:Lcom/anythink/basead/a/b/f;

    invoke-static {v2}, Lcom/anythink/basead/a/b/f;->b(Lcom/anythink/basead/a/b/f;)Ljava/lang/String;

    move-result-object v2

    invoke-static/range {p1 .. p2}, Lcom/anythink/basead/c/f;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/basead/c/e;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/anythink/basead/a/b/d;->a(Ljava/lang/String;Lcom/anythink/basead/c/e;)V

    return-void
.end method
