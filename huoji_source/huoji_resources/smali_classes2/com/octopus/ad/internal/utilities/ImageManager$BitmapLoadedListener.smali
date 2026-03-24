.class public interface abstract Lcom/octopus/ad/internal/utilities/ImageManager$BitmapLoadedListener;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/octopus/ad/internal/utilities/ImageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "BitmapLoadedListener"
.end annotation


# virtual methods
.method public abstract onBitmapLoadFailed()V
.end method

.method public abstract onBitmapLoaded(Landroid/graphics/Bitmap;)V
.end method
