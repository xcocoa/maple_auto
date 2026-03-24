.class public Lcom/octopus/ad/internal/view/AdViewImpl$b$7;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/octopus/ad/internal/view/AdViewImpl$b;->a(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:I

.field public final synthetic c:Lcom/octopus/ad/internal/view/AdViewImpl$b;


# direct methods
.method public constructor <init>(Lcom/octopus/ad/internal/view/AdViewImpl$b;Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lcom/octopus/ad/internal/view/AdViewImpl$b$7;->c:Lcom/octopus/ad/internal/view/AdViewImpl$b;

    iput-object p2, p0, Lcom/octopus/ad/internal/view/AdViewImpl$b$7;->a:Ljava/lang/String;

    iput p3, p0, Lcom/octopus/ad/internal/view/AdViewImpl$b$7;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/octopus/ad/internal/view/AdViewImpl$b$7;->c:Lcom/octopus/ad/internal/view/AdViewImpl$b;

    iget-object v0, v0, Lcom/octopus/ad/internal/view/AdViewImpl$b;->a:Lcom/octopus/ad/internal/view/AdViewImpl;

    iget-boolean v1, v0, Lcom/octopus/ad/internal/view/AdViewImpl;->j:Z

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/octopus/ad/internal/view/AdViewImpl;->p(Lcom/octopus/ad/internal/view/AdViewImpl;)Lcom/octopus/ad/RewardVideoAdListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/octopus/ad/internal/view/AdViewImpl$b$7;->c:Lcom/octopus/ad/internal/view/AdViewImpl$b;

    iget-object v0, v0, Lcom/octopus/ad/internal/view/AdViewImpl$b;->a:Lcom/octopus/ad/internal/view/AdViewImpl;

    invoke-static {v0}, Lcom/octopus/ad/internal/view/AdViewImpl;->p(Lcom/octopus/ad/internal/view/AdViewImpl;)Lcom/octopus/ad/RewardVideoAdListener;

    move-result-object v0

    new-instance v1, Lcom/octopus/ad/internal/p;

    iget-object v2, p0, Lcom/octopus/ad/internal/view/AdViewImpl$b$7;->a:Ljava/lang/String;

    iget v3, p0, Lcom/octopus/ad/internal/view/AdViewImpl$b$7;->b:I

    invoke-direct {v1, v2, v3}, Lcom/octopus/ad/internal/p;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Lcom/octopus/ad/RewardVideoAdListener;->onRewarded(Lcom/octopus/ad/RewardItem;)V

    :cond_0
    return-void
.end method
