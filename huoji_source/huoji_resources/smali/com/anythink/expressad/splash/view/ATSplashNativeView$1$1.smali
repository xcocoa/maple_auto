.class public final Lcom/anythink/expressad/splash/view/ATSplashNativeView$1$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/anythink/core/common/o/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/expressad/splash/view/ATSplashNativeView$1;->a(Landroid/graphics/Bitmap;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/anythink/expressad/splash/view/ATSplashNativeView$1;


# direct methods
.method public constructor <init>(Lcom/anythink/expressad/splash/view/ATSplashNativeView$1;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/expressad/splash/view/ATSplashNativeView$1$1;->a:Lcom/anythink/expressad/splash/view/ATSplashNativeView$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    return-void
.end method

.method public final a(Landroid/graphics/Bitmap;)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/anythink/expressad/splash/view/ATSplashNativeView$1$1;->a:Lcom/anythink/expressad/splash/view/ATSplashNativeView$1;

    iget-object v0, v0, Lcom/anythink/expressad/splash/view/ATSplashNativeView$1;->a:Lcom/anythink/expressad/splash/view/ATSplashNativeView;

    invoke-static {v0}, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->i(Lcom/anythink/expressad/splash/view/ATSplashNativeView;)Lcom/anythink/expressad/splash/view/MBNoRecycledCrashImageView;

    move-result-object v0

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v0, p0, Lcom/anythink/expressad/splash/view/ATSplashNativeView$1$1;->a:Lcom/anythink/expressad/splash/view/ATSplashNativeView$1;

    iget-object v0, v0, Lcom/anythink/expressad/splash/view/ATSplashNativeView$1;->a:Lcom/anythink/expressad/splash/view/ATSplashNativeView;

    invoke-static {v0}, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->i(Lcom/anythink/expressad/splash/view/ATSplashNativeView;)Lcom/anythink/expressad/splash/view/MBNoRecycledCrashImageView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method
