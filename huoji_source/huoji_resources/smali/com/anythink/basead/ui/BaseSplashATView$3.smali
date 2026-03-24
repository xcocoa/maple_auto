.class public final Lcom/anythink/basead/ui/BaseSplashATView$3;
.super Ljava/util/TimerTask;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/basead/ui/BaseSplashATView;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/anythink/basead/ui/BaseSplashATView;


# direct methods
.method public constructor <init>(Lcom/anythink/basead/ui/BaseSplashATView;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/basead/ui/BaseSplashATView$3;->a:Lcom/anythink/basead/ui/BaseSplashATView;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/anythink/basead/ui/BaseSplashATView$3;->a:Lcom/anythink/basead/ui/BaseSplashATView;

    invoke-static {v0}, Lcom/anythink/basead/ui/BaseSplashATView;->c(Lcom/anythink/basead/ui/BaseSplashATView;)Lcom/anythink/core/common/o/a/f$b;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/anythink/core/common/o/x;->a(Landroid/view/View;Lcom/anythink/core/common/o/a/f$b;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/anythink/basead/ui/BaseSplashATView$3;->a:Lcom/anythink/basead/ui/BaseSplashATView;

    new-instance v1, Lcom/anythink/basead/ui/BaseSplashATView$3$1;

    invoke-direct {v1, p0}, Lcom/anythink/basead/ui/BaseSplashATView$3$1;-><init>(Lcom/anythink/basead/ui/BaseSplashATView$3;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
