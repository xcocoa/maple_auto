.class public final Lcom/anythink/basead/ui/BaseSplashATView$3$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/basead/ui/BaseSplashATView$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/anythink/basead/ui/BaseSplashATView$3;


# direct methods
.method public constructor <init>(Lcom/anythink/basead/ui/BaseSplashATView$3;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/basead/ui/BaseSplashATView$3$1;->a:Lcom/anythink/basead/ui/BaseSplashATView$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/anythink/basead/ui/BaseSplashATView$3$1;->a:Lcom/anythink/basead/ui/BaseSplashATView$3;

    iget-object v0, v0, Lcom/anythink/basead/ui/BaseSplashATView$3;->a:Lcom/anythink/basead/ui/BaseSplashATView;

    invoke-static {v0}, Lcom/anythink/basead/ui/BaseSplashATView;->d(Lcom/anythink/basead/ui/BaseSplashATView;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    iget-object v0, p0, Lcom/anythink/basead/ui/BaseSplashATView$3$1;->a:Lcom/anythink/basead/ui/BaseSplashATView$3;

    iget-object v0, v0, Lcom/anythink/basead/ui/BaseSplashATView$3;->a:Lcom/anythink/basead/ui/BaseSplashATView;

    if-gtz v4, :cond_0

    invoke-static {v0}, Lcom/anythink/basead/ui/BaseSplashATView;->e(Lcom/anythink/basead/ui/BaseSplashATView;)V

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lcom/anythink/basead/ui/BaseSplashATView;->d(Lcom/anythink/basead/ui/BaseSplashATView;)J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/anythink/basead/ui/BaseSplashATView;->a(Lcom/anythink/basead/ui/BaseSplashATView;J)V

    :goto_0
    iget-object v0, p0, Lcom/anythink/basead/ui/BaseSplashATView$3$1;->a:Lcom/anythink/basead/ui/BaseSplashATView$3;

    iget-object v0, v0, Lcom/anythink/basead/ui/BaseSplashATView$3;->a:Lcom/anythink/basead/ui/BaseSplashATView;

    invoke-static {v0}, Lcom/anythink/basead/ui/BaseSplashATView;->d(Lcom/anythink/basead/ui/BaseSplashATView;)J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    sub-long/2addr v1, v3

    invoke-static {v0, v1, v2}, Lcom/anythink/basead/ui/BaseSplashATView;->b(Lcom/anythink/basead/ui/BaseSplashATView;J)J

    return-void
.end method
