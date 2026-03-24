.class public Lcom/octopus/ad/internal/view/AdViewImpl$b$8;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/octopus/ad/internal/view/AdViewImpl$b;->a(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:J

.field public final synthetic b:Lcom/octopus/ad/internal/view/AdViewImpl$b;


# direct methods
.method public constructor <init>(Lcom/octopus/ad/internal/view/AdViewImpl$b;J)V
    .locals 0

    iput-object p1, p0, Lcom/octopus/ad/internal/view/AdViewImpl$b$8;->b:Lcom/octopus/ad/internal/view/AdViewImpl$b;

    iput-wide p2, p0, Lcom/octopus/ad/internal/view/AdViewImpl$b$8;->a:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/octopus/ad/internal/view/AdViewImpl$b$8;->b:Lcom/octopus/ad/internal/view/AdViewImpl$b;

    iget-object v0, v0, Lcom/octopus/ad/internal/view/AdViewImpl$b;->a:Lcom/octopus/ad/internal/view/AdViewImpl;

    invoke-static {v0}, Lcom/octopus/ad/internal/view/AdViewImpl;->v(Lcom/octopus/ad/internal/view/AdViewImpl;)Lcom/octopus/ad/SplashAdListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/octopus/ad/internal/view/AdViewImpl$b$8;->b:Lcom/octopus/ad/internal/view/AdViewImpl$b;

    invoke-static {v0}, Lcom/octopus/ad/internal/view/AdViewImpl$b;->a(Lcom/octopus/ad/internal/view/AdViewImpl$b;)Lcom/octopus/ad/internal/network/b;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/octopus/ad/internal/view/AdViewImpl$b$8;->b:Lcom/octopus/ad/internal/view/AdViewImpl$b;

    invoke-static {v0}, Lcom/octopus/ad/internal/view/AdViewImpl$b;->a(Lcom/octopus/ad/internal/view/AdViewImpl$b;)Lcom/octopus/ad/internal/network/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/octopus/ad/internal/network/b;->a()Lcom/octopus/ad/internal/l;

    move-result-object v0

    sget-object v1, Lcom/octopus/ad/internal/l;->a:Lcom/octopus/ad/internal/l;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/octopus/ad/internal/view/AdViewImpl$b$8;->b:Lcom/octopus/ad/internal/view/AdViewImpl$b;

    iget-object v0, v0, Lcom/octopus/ad/internal/view/AdViewImpl$b;->a:Lcom/octopus/ad/internal/view/AdViewImpl;

    invoke-static {v0}, Lcom/octopus/ad/internal/view/AdViewImpl;->v(Lcom/octopus/ad/internal/view/AdViewImpl;)Lcom/octopus/ad/SplashAdListener;

    move-result-object v0

    iget-wide v1, p0, Lcom/octopus/ad/internal/view/AdViewImpl$b$8;->a:J

    invoke-interface {v0, v1, v2}, Lcom/octopus/ad/SplashAdListener;->onAdTick(J)V

    :cond_0
    return-void
.end method
