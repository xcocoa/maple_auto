.class public final Lcom/anythink/core/common/res/b$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/core/common/res/b;->b(Ljava/lang/String;Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/graphics/Bitmap;

.field public final synthetic b:Lcom/anythink/core/common/res/b$a;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Lcom/anythink/core/common/res/b;


# direct methods
.method public constructor <init>(Lcom/anythink/core/common/res/b;Landroid/graphics/Bitmap;Lcom/anythink/core/common/res/b$a;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/core/common/res/b$1;->d:Lcom/anythink/core/common/res/b;

    iput-object p2, p0, Lcom/anythink/core/common/res/b$1;->a:Landroid/graphics/Bitmap;

    iput-object p3, p0, Lcom/anythink/core/common/res/b$1;->b:Lcom/anythink/core/common/res/b$a;

    iput-object p4, p0, Lcom/anythink/core/common/res/b$1;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/anythink/core/common/res/b$1;->a:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/anythink/core/common/res/b$1;->b:Lcom/anythink/core/common/res/b$a;

    iget-object v2, p0, Lcom/anythink/core/common/res/b$1;->c:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Lcom/anythink/core/common/res/b$a;->onSuccess(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/anythink/core/common/res/b$1;->b:Lcom/anythink/core/common/res/b$a;

    iget-object v1, p0, Lcom/anythink/core/common/res/b$1;->c:Ljava/lang/String;

    const-string v2, "Bitmap load fail"

    invoke-interface {v0, v1, v2}, Lcom/anythink/core/common/res/b$a;->onFail(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
