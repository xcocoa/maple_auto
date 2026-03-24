.class public final Lcom/anythink/core/common/o/c$1$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/core/common/o/c$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/graphics/Bitmap;

.field public final synthetic b:Lcom/anythink/core/common/o/c$1;


# direct methods
.method public constructor <init>(Lcom/anythink/core/common/o/c$1;Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/core/common/o/c$1$1;->b:Lcom/anythink/core/common/o/c$1;

    iput-object p2, p0, Lcom/anythink/core/common/o/c$1$1;->a:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/anythink/core/common/o/c$1$1;->b:Lcom/anythink/core/common/o/c$1;

    iget-object v0, v0, Lcom/anythink/core/common/o/c$1;->c:Lcom/anythink/core/common/o/c$a;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/anythink/core/common/o/c$1$1;->a:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    invoke-interface {v0, v1}, Lcom/anythink/core/common/o/c$a;->a(Landroid/graphics/Bitmap;)V

    return-void

    :cond_0
    invoke-interface {v0}, Lcom/anythink/core/common/o/c$a;->a()V

    :cond_1
    return-void
.end method
