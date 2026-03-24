.class public final Lcom/anythink/expressad/foundation/g/d/b$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/expressad/foundation/g/d/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/anythink/expressad/foundation/g/d/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Lcom/anythink/expressad/foundation/g/d/c;

.field public final synthetic e:Z

.field public final synthetic f:Lcom/anythink/expressad/foundation/g/d/b;


# direct methods
.method public constructor <init>(Lcom/anythink/expressad/foundation/g/d/b;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/anythink/expressad/foundation/g/d/c;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/expressad/foundation/g/d/b$1;->f:Lcom/anythink/expressad/foundation/g/d/b;

    iput-object p2, p0, Lcom/anythink/expressad/foundation/g/d/b$1;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/anythink/expressad/foundation/g/d/b$1;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/anythink/expressad/foundation/g/d/b$1;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/anythink/expressad/foundation/g/d/b$1;->d:Lcom/anythink/expressad/foundation/g/d/c;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/anythink/expressad/foundation/g/d/b$1;->e:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 17

    move-object/from16 v0, p0

    new-instance v1, Ljava/io/File;

    iget-object v2, v0, Lcom/anythink/expressad/foundation/g/d/b$1;->a:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/anythink/expressad/foundation/g/d/b$1;->f:Lcom/anythink/expressad/foundation/g/d/b;

    iget-object v3, v0, Lcom/anythink/expressad/foundation/g/d/b$1;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/anythink/expressad/foundation/g/d/b;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v1, v0, Lcom/anythink/expressad/foundation/g/d/b$1;->f:Lcom/anythink/expressad/foundation/g/d/b;

    iget-object v3, v0, Lcom/anythink/expressad/foundation/g/d/b$1;->c:Ljava/lang/String;

    iget-object v4, v0, Lcom/anythink/expressad/foundation/g/d/b$1;->d:Lcom/anythink/expressad/foundation/g/d/c;

    invoke-static {v1, v3, v2, v4}, Lcom/anythink/expressad/foundation/g/d/b;->a(Lcom/anythink/expressad/foundation/g/d/b;Ljava/lang/String;Landroid/graphics/Bitmap;Lcom/anythink/expressad/foundation/g/d/c;)V

    return-void

    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_2

    iget-object v1, v0, Lcom/anythink/expressad/foundation/g/d/b$1;->a:Ljava/lang/String;

    invoke-static {v1}, Lcom/anythink/expressad/foundation/g/d/a;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, v0, Lcom/anythink/expressad/foundation/g/d/b$1;->f:Lcom/anythink/expressad/foundation/g/d/b;

    iget-object v3, v0, Lcom/anythink/expressad/foundation/g/d/b$1;->b:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Lcom/anythink/expressad/foundation/g/d/b;->a(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    iget-object v2, v0, Lcom/anythink/expressad/foundation/g/d/b$1;->f:Lcom/anythink/expressad/foundation/g/d/b;

    iget-object v3, v0, Lcom/anythink/expressad/foundation/g/d/b$1;->c:Ljava/lang/String;

    iget-object v4, v0, Lcom/anythink/expressad/foundation/g/d/b$1;->d:Lcom/anythink/expressad/foundation/g/d/c;

    invoke-static {v2, v3, v1, v4}, Lcom/anythink/expressad/foundation/g/d/b;->a(Lcom/anythink/expressad/foundation/g/d/b;Ljava/lang/String;Landroid/graphics/Bitmap;Lcom/anythink/expressad/foundation/g/d/c;)V

    return-void

    :cond_1
    iget-object v5, v0, Lcom/anythink/expressad/foundation/g/d/b$1;->f:Lcom/anythink/expressad/foundation/g/d/b;

    iget-object v6, v0, Lcom/anythink/expressad/foundation/g/d/b$1;->c:Ljava/lang/String;

    iget-object v7, v0, Lcom/anythink/expressad/foundation/g/d/b$1;->b:Ljava/lang/String;

    iget-object v8, v0, Lcom/anythink/expressad/foundation/g/d/b$1;->a:Ljava/lang/String;

    const/4 v9, 0x1

    iget-object v10, v0, Lcom/anythink/expressad/foundation/g/d/b$1;->d:Lcom/anythink/expressad/foundation/g/d/c;

    invoke-static/range {v5 .. v10}, Lcom/anythink/expressad/foundation/g/d/b;->a(Lcom/anythink/expressad/foundation/g/d/b;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/anythink/expressad/foundation/g/d/c;)V

    return-void

    :cond_2
    iget-object v11, v0, Lcom/anythink/expressad/foundation/g/d/b$1;->f:Lcom/anythink/expressad/foundation/g/d/b;

    iget-object v12, v0, Lcom/anythink/expressad/foundation/g/d/b$1;->c:Ljava/lang/String;

    iget-object v13, v0, Lcom/anythink/expressad/foundation/g/d/b$1;->b:Ljava/lang/String;

    iget-object v14, v0, Lcom/anythink/expressad/foundation/g/d/b$1;->a:Ljava/lang/String;

    const/4 v15, 0x0

    iget-object v1, v0, Lcom/anythink/expressad/foundation/g/d/b$1;->d:Lcom/anythink/expressad/foundation/g/d/c;

    move-object/from16 v16, v1

    invoke-static/range {v11 .. v16}, Lcom/anythink/expressad/foundation/g/d/b;->a(Lcom/anythink/expressad/foundation/g/d/b;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/anythink/expressad/foundation/g/d/c;)V

    return-void
.end method
