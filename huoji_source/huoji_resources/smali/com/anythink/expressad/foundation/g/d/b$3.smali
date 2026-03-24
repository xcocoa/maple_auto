.class public final Lcom/anythink/expressad/foundation/g/d/b$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/expressad/foundation/g/d/b;->a(Ljava/lang/String;Landroid/graphics/Bitmap;Lcom/anythink/expressad/foundation/g/d/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/anythink/expressad/foundation/g/d/c;

.field public final synthetic b:Landroid/graphics/Bitmap;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Lcom/anythink/expressad/foundation/g/d/b;


# direct methods
.method public constructor <init>(Lcom/anythink/expressad/foundation/g/d/b;Lcom/anythink/expressad/foundation/g/d/c;Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/expressad/foundation/g/d/b$3;->d:Lcom/anythink/expressad/foundation/g/d/b;

    iput-object p2, p0, Lcom/anythink/expressad/foundation/g/d/b$3;->a:Lcom/anythink/expressad/foundation/g/d/c;

    iput-object p3, p0, Lcom/anythink/expressad/foundation/g/d/b$3;->b:Landroid/graphics/Bitmap;

    iput-object p4, p0, Lcom/anythink/expressad/foundation/g/d/b$3;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/anythink/expressad/foundation/g/d/b$3;->a:Lcom/anythink/expressad/foundation/g/d/c;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/anythink/expressad/foundation/g/d/b$3;->b:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/anythink/expressad/foundation/g/d/b$3;->a:Lcom/anythink/expressad/foundation/g/d/c;

    iget-object v1, p0, Lcom/anythink/expressad/foundation/g/d/b$3;->b:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/anythink/expressad/foundation/g/d/b$3;->c:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/anythink/expressad/foundation/g/d/c;->a(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/anythink/expressad/foundation/g/d/b$3;->a:Lcom/anythink/expressad/foundation/g/d/c;

    iget-object v1, p0, Lcom/anythink/expressad/foundation/g/d/b$3;->c:Ljava/lang/String;

    const-string v2, "bitmap no available"

    invoke-interface {v0, v2, v1}, Lcom/anythink/expressad/foundation/g/d/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method
