.class public Lcom/octopus/ad/internal/g$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/octopus/ad/internal/g;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/octopus/ad/internal/g;


# direct methods
.method public constructor <init>(Lcom/octopus/ad/internal/g;)V
    .locals 0

    iput-object p1, p0, Lcom/octopus/ad/internal/g$1;->a:Lcom/octopus/ad/internal/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/octopus/ad/internal/g$1;->a:Lcom/octopus/ad/internal/g;

    invoke-static {v0}, Lcom/octopus/ad/internal/g;->a(Lcom/octopus/ad/internal/g;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/octopus/ad/internal/g$1;->a:Lcom/octopus/ad/internal/g;

    invoke-static {v0}, Lcom/octopus/ad/internal/g;->b(Lcom/octopus/ad/internal/g;)Lcom/octopus/ad/internal/nativead/NativeAdShownListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/octopus/ad/internal/g$1;->a:Lcom/octopus/ad/internal/g;

    invoke-static {v0}, Lcom/octopus/ad/internal/g;->b(Lcom/octopus/ad/internal/g;)Lcom/octopus/ad/internal/nativead/NativeAdShownListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/octopus/ad/internal/nativead/NativeAdShownListener;->onAdShown()V

    :cond_0
    iget-object v0, p0, Lcom/octopus/ad/internal/g$1;->a:Lcom/octopus/ad/internal/g;

    invoke-static {v0}, Lcom/octopus/ad/internal/g;->c(Lcom/octopus/ad/internal/g;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/octopus/ad/internal/g$1;->a:Lcom/octopus/ad/internal/g;

    invoke-static {v0}, Lcom/octopus/ad/internal/g;->c(Lcom/octopus/ad/internal/g;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdownNow()Ljava/util/List;

    :cond_1
    iget-object v0, p0, Lcom/octopus/ad/internal/g$1;->a:Lcom/octopus/ad/internal/g;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/octopus/ad/internal/g;->a(Lcom/octopus/ad/internal/g;Lcom/octopus/ad/internal/nativead/NativeAdShownListener;)Lcom/octopus/ad/internal/nativead/NativeAdShownListener;

    iget-object v0, p0, Lcom/octopus/ad/internal/g$1;->a:Lcom/octopus/ad/internal/g;

    invoke-static {v0, v1}, Lcom/octopus/ad/internal/g;->a(Lcom/octopus/ad/internal/g;Landroid/view/View;)Landroid/view/View;

    iget-object v0, p0, Lcom/octopus/ad/internal/g$1;->a:Lcom/octopus/ad/internal/g;

    invoke-static {v0, v1}, Lcom/octopus/ad/internal/g;->a(Lcom/octopus/ad/internal/g;Ljava/util/concurrent/ScheduledExecutorService;)Ljava/util/concurrent/ScheduledExecutorService;

    :cond_2
    return-void
.end method
