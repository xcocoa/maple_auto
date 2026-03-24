.class public final Lcom/anythink/expressad/splash/c/d$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/expressad/splash/c/d;->a(Lcom/anythink/expressad/foundation/d/c;Lcom/anythink/expressad/splash/view/ATSplashView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/anythink/expressad/splash/c/d;


# direct methods
.method public constructor <init>(Lcom/anythink/expressad/splash/c/d;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/expressad/splash/c/d$4;->a:Lcom/anythink/expressad/splash/c/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onViewAttachedToWindow(Landroid/view/View;)V
    .locals 3

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object p1

    new-instance v0, Lcom/anythink/expressad/splash/c/d$4$1;

    invoke-direct {v0, p0}, Lcom/anythink/expressad/splash/c/d$4$1;-><init>(Lcom/anythink/expressad/splash/c/d$4;)V

    const-wide/16 v1, 0x1e

    invoke-virtual {p1, v0, v1, v2}, Lcom/anythink/core/common/b/n;->a(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public final onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/anythink/expressad/splash/c/d$4;->a:Lcom/anythink/expressad/splash/c/d;

    invoke-virtual {p1}, Lcom/anythink/expressad/splash/c/d;->c()V

    return-void
.end method
