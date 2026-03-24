.class public final Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3$OooO00o;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/media/ImageReader$OnImageAvailableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3;->OooOO0o()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic OooO00o:Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3;


# direct methods
.method public constructor <init>(Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3;)V
    .locals 0

    iput-object p1, p0, Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3$OooO00o;->OooO00o:Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onImageAvailable(Landroid/media/ImageReader;)V
    .locals 2

    iget-object p1, p0, Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3$OooO00o;->OooO00o:Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3;

    invoke-static {p1}, Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3;->OooO0oo(Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3$OooO00o;->OooO00o:Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3;

    invoke-static {p1}, Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3;->OooOO0(Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3;)Landroid/media/ImageReader;

    move-result-object p1

    invoke-virtual {p1}, Landroid/media/ImageReader;->acquireLatestImage()Landroid/media/Image;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3$OooO00o;->OooO00o:Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3;

    invoke-static {v0, p1}, Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3;->OooO0o(Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3;Landroid/media/Image;)Lcom/cyjh/mobileanjian/screencap/ScreenShotImage;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3;->OooO0oO(Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3;Lcom/cyjh/mobileanjian/screencap/ScreenShotImage;)Lcom/cyjh/mobileanjian/screencap/ScreenShotImage;

    iget-object v0, p0, Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3$OooO00o;->OooO00o:Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3;

    invoke-static {p1}, Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3;->OooO0O0(Landroid/media/Image;)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3;->OooO0Oo(Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    iget-object p1, p0, Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3$OooO00o;->OooO00o:Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3;->OooO(Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3;Z)Z

    iget-object p1, p0, Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3$OooO00o;->OooO00o:Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3;

    invoke-static {p1}, Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3;->OooOOO(Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3;)Z

    iget-object p1, p0, Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3$OooO00o;->OooO00o:Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3;

    invoke-static {p1}, Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3;->OooOO0(Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3;)Landroid/media/ImageReader;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3$OooO00o;->OooO00o:Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3;

    invoke-static {p1}, Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3;->OooOO0(Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3;)Landroid/media/ImageReader;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3$OooO00o;->OooO00o:Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3;->OooO(Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3;Z)Z

    :cond_1
    return-void
.end method
