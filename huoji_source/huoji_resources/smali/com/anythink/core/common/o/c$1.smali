.class public final Lcom/anythink/core/common/o/c$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/core/common/o/c;->a(Landroid/content/Context;Landroid/graphics/Bitmap;Lcom/anythink/core/common/o/c$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:Landroid/graphics/Bitmap;

.field public final synthetic c:Lcom/anythink/core/common/o/c$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/graphics/Bitmap;Lcom/anythink/core/common/o/c$a;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/core/common/o/c$1;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/anythink/core/common/o/c$1;->b:Landroid/graphics/Bitmap;

    iput-object p3, p0, Lcom/anythink/core/common/o/c$1;->c:Lcom/anythink/core/common/o/c$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/anythink/core/common/o/c$1;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/anythink/core/common/o/c$1;->b:Landroid/graphics/Bitmap;

    invoke-static {v0, v1}, Lcom/anythink/core/common/o/c;->a(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v1

    new-instance v2, Lcom/anythink/core/common/o/c$1$1;

    invoke-direct {v2, p0, v0}, Lcom/anythink/core/common/o/c$1$1;-><init>(Lcom/anythink/core/common/o/c$1;Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v2}, Lcom/anythink/core/common/b/n;->b(Ljava/lang/Runnable;)V

    return-void
.end method
