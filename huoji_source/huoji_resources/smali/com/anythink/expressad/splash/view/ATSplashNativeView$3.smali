.class public final Lcom/anythink/expressad/splash/view/ATSplashNativeView$3;
.super Lcom/anythink/expressad/shake/b;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/expressad/splash/view/ATSplashNativeView;->j()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic h:Lcom/anythink/expressad/splash/view/ATSplashNativeView;


# direct methods
.method public constructor <init>(Lcom/anythink/expressad/splash/view/ATSplashNativeView;II)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/expressad/splash/view/ATSplashNativeView$3;->h:Lcom/anythink/expressad/splash/view/ATSplashNativeView;

    invoke-direct {p0, p2, p3}, Lcom/anythink/expressad/shake/b;-><init>(II)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lcom/anythink/expressad/splash/view/ATSplashNativeView$3;->h:Lcom/anythink/expressad/splash/view/ATSplashNativeView;

    invoke-static {v0}, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->n(Lcom/anythink/expressad/splash/view/ATSplashNativeView;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/anythink/expressad/splash/view/ATSplashNativeView$3;->h:Lcom/anythink/expressad/splash/view/ATSplashNativeView;

    invoke-static {v0}, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->o(Lcom/anythink/expressad/splash/view/ATSplashNativeView;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/anythink/expressad/splash/view/ATSplashNativeView$3;->h:Lcom/anythink/expressad/splash/view/ATSplashNativeView;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->isShown()Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    iget-object v0, p0, Lcom/anythink/expressad/splash/view/ATSplashNativeView$3;->h:Lcom/anythink/expressad/splash/view/ATSplashNativeView;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->a(Lcom/anythink/expressad/splash/view/ATSplashNativeView;I)V

    return-void
.end method
