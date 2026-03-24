.class public final Lcom/anythink/expressad/splash/c/a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/anythink/expressad/splash/c/a$a;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(B)V
    .locals 0

    invoke-direct {p0}, Lcom/anythink/expressad/splash/c/a;-><init>()V

    return-void
.end method

.method private static a()Lcom/anythink/expressad/splash/c/a;
    .locals 1

    invoke-static {}, Lcom/anythink/expressad/splash/c/a$a;->a()Lcom/anythink/expressad/splash/c/a;

    move-result-object v0

    return-object v0
.end method

.method private static a(Landroid/content/Context;Lcom/anythink/expressad/splash/view/ATSplashView;Lcom/anythink/expressad/splash/a/b;Lcom/anythink/expressad/splash/b/a;)V
    .locals 1

    :try_start_0
    new-instance v0, Lcom/anythink/expressad/splash/view/ATSplashNativeView;

    invoke-direct {v0, p0, p1, p2}, Lcom/anythink/expressad/splash/view/ATSplashNativeView;-><init>(Landroid/content/Context;Lcom/anythink/expressad/splash/view/ATSplashView;Lcom/anythink/expressad/splash/a/b;)V

    if-eqz p3, :cond_0

    invoke-interface {p3, v0}, Lcom/anythink/expressad/splash/b/a;->a(Landroid/view/View;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    return-void

    :catchall_0
    nop

    if-eqz p3, :cond_1

    const-string p0, "View render error."

    invoke-interface {p3, p0}, Lcom/anythink/expressad/splash/b/a;->a(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public static a(Lcom/anythink/expressad/splash/view/ATSplashView;Lcom/anythink/expressad/splash/a/b;Lcom/anythink/expressad/splash/b/a;)V
    .locals 2

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/n;->f()Landroid/content/Context;

    move-result-object v0

    :cond_0
    :try_start_0
    new-instance v1, Lcom/anythink/expressad/splash/view/ATSplashNativeView;

    invoke-direct {v1, v0, p0, p1}, Lcom/anythink/expressad/splash/view/ATSplashNativeView;-><init>(Landroid/content/Context;Lcom/anythink/expressad/splash/view/ATSplashView;Lcom/anythink/expressad/splash/a/b;)V

    invoke-interface {p2, v1}, Lcom/anythink/expressad/splash/b/a;->a(Landroid/view/View;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    const-string p0, "View render error."

    invoke-interface {p2, p0}, Lcom/anythink/expressad/splash/b/a;->a(Ljava/lang/String;)V

    return-void
.end method
