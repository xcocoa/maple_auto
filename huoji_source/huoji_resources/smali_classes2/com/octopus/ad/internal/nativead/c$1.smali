.class public Lcom/octopus/ad/internal/nativead/c$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/octopus/ad/internal/nativead/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/octopus/ad/internal/nativead/c;


# direct methods
.method public constructor <init>(Lcom/octopus/ad/internal/nativead/c;)V
    .locals 0

    iput-object p1, p0, Lcom/octopus/ad/internal/nativead/c$1;->a:Lcom/octopus/ad/internal/nativead/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-string v0, "expireRunnable"

    invoke-static {v0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/octopus/ad/internal/nativead/c$1;->a:Lcom/octopus/ad/internal/nativead/c;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/octopus/ad/internal/nativead/c;->a(Lcom/octopus/ad/internal/nativead/c;Z)Z

    iget-object v0, p0, Lcom/octopus/ad/internal/nativead/c$1;->a:Lcom/octopus/ad/internal/nativead/c;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/octopus/ad/internal/nativead/c;->a(Lcom/octopus/ad/internal/nativead/c;Landroid/view/View;)Landroid/view/View;

    iget-object v0, p0, Lcom/octopus/ad/internal/nativead/c$1;->a:Lcom/octopus/ad/internal/nativead/c;

    invoke-static {v0, v1}, Lcom/octopus/ad/internal/nativead/c;->a(Lcom/octopus/ad/internal/nativead/c;Ljava/util/List;)Ljava/util/List;

    iget-object v0, p0, Lcom/octopus/ad/internal/nativead/c$1;->a:Lcom/octopus/ad/internal/nativead/c;

    invoke-static {v0}, Lcom/octopus/ad/internal/nativead/c;->a(Lcom/octopus/ad/internal/nativead/c;)Lcom/octopus/ad/internal/r;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/octopus/ad/internal/nativead/c$1;->a:Lcom/octopus/ad/internal/nativead/c;

    invoke-static {v0}, Lcom/octopus/ad/internal/nativead/c;->a(Lcom/octopus/ad/internal/nativead/c;)Lcom/octopus/ad/internal/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/octopus/ad/internal/r;->d()V

    iget-object v0, p0, Lcom/octopus/ad/internal/nativead/c$1;->a:Lcom/octopus/ad/internal/nativead/c;

    invoke-static {v0, v1}, Lcom/octopus/ad/internal/nativead/c;->a(Lcom/octopus/ad/internal/nativead/c;Lcom/octopus/ad/internal/r;)Lcom/octopus/ad/internal/r;

    :cond_0
    iget-object v0, p0, Lcom/octopus/ad/internal/nativead/c$1;->a:Lcom/octopus/ad/internal/nativead/c;

    invoke-static {v0, v1}, Lcom/octopus/ad/internal/nativead/c;->a(Lcom/octopus/ad/internal/nativead/c;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/octopus/ad/internal/nativead/c$1;->a:Lcom/octopus/ad/internal/nativead/c;

    invoke-static {v0, v1}, Lcom/octopus/ad/internal/nativead/c;->a(Lcom/octopus/ad/internal/nativead/c;Lcom/octopus/ad/internal/nativead/NativeAdEventListener;)Lcom/octopus/ad/internal/nativead/NativeAdEventListener;

    iget-object v0, p0, Lcom/octopus/ad/internal/nativead/c$1;->a:Lcom/octopus/ad/internal/nativead/c;

    invoke-static {v0}, Lcom/octopus/ad/internal/nativead/c;->b(Lcom/octopus/ad/internal/nativead/c;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/octopus/ad/internal/nativead/c$1;->a:Lcom/octopus/ad/internal/nativead/c;

    invoke-static {v0}, Lcom/octopus/ad/internal/nativead/c;->b(Lcom/octopus/ad/internal/nativead/c;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iget-object v0, p0, Lcom/octopus/ad/internal/nativead/c$1;->a:Lcom/octopus/ad/internal/nativead/c;

    invoke-static {v0, v1}, Lcom/octopus/ad/internal/nativead/c;->a(Lcom/octopus/ad/internal/nativead/c;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    :cond_1
    iget-object v0, p0, Lcom/octopus/ad/internal/nativead/c$1;->a:Lcom/octopus/ad/internal/nativead/c;

    invoke-static {v0}, Lcom/octopus/ad/internal/nativead/c;->c(Lcom/octopus/ad/internal/nativead/c;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/octopus/ad/internal/nativead/c$1;->a:Lcom/octopus/ad/internal/nativead/c;

    invoke-static {v0}, Lcom/octopus/ad/internal/nativead/c;->c(Lcom/octopus/ad/internal/nativead/c;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iget-object v0, p0, Lcom/octopus/ad/internal/nativead/c$1;->a:Lcom/octopus/ad/internal/nativead/c;

    invoke-static {v0, v1}, Lcom/octopus/ad/internal/nativead/c;->b(Lcom/octopus/ad/internal/nativead/c;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    :cond_2
    return-void
.end method
