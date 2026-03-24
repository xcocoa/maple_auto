.class public Lcn/haorui/sdk/adsail_ad/AdNative$10;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcn/haorui/sdk/core/utils/HttpGetBytesCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/haorui/sdk/adsail_ad/AdNative;->loadImageSplashAd(Lcn/haorui/sdk/adsail_ad/splash/ISplashAdListener;Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot;Lcn/haorui/sdk/adsail_ad/splash/SplashAdImpl;Lcn/haorui/sdk/adsail_ad/splash/HRSplashRootView;Lz2/o000;ZLandroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcn/haorui/sdk/adsail_ad/AdNative;

.field public final synthetic val$adListener:Lcn/haorui/sdk/adsail_ad/splash/ISplashAdListener;

.field public final synthetic val$adRoot:Lcn/haorui/sdk/adsail_ad/splash/HRSplashRootView;

.field public final synthetic val$customSkipButton:Landroid/view/View;

.field public final synthetic val$imageView:Lcn/haorui/sdk/core/view/gif/GifImageView;

.field public final synthetic val$nativeAd:Lcn/haorui/sdk/adsail_ad/splash/SplashAdImpl;


# direct methods
.method public constructor <init>(Lcn/haorui/sdk/adsail_ad/AdNative;Lcn/haorui/sdk/adsail_ad/splash/ISplashAdListener;Lcn/haorui/sdk/adsail_ad/splash/SplashAdImpl;Lcn/haorui/sdk/adsail_ad/splash/HRSplashRootView;Landroid/view/View;Lcn/haorui/sdk/core/view/gif/GifImageView;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/adsail_ad/AdNative$10;->this$0:Lcn/haorui/sdk/adsail_ad/AdNative;

    iput-object p2, p0, Lcn/haorui/sdk/adsail_ad/AdNative$10;->val$adListener:Lcn/haorui/sdk/adsail_ad/splash/ISplashAdListener;

    iput-object p3, p0, Lcn/haorui/sdk/adsail_ad/AdNative$10;->val$nativeAd:Lcn/haorui/sdk/adsail_ad/splash/SplashAdImpl;

    iput-object p4, p0, Lcn/haorui/sdk/adsail_ad/AdNative$10;->val$adRoot:Lcn/haorui/sdk/adsail_ad/splash/HRSplashRootView;

    iput-object p5, p0, Lcn/haorui/sdk/adsail_ad/AdNative$10;->val$customSkipButton:Landroid/view/View;

    iput-object p6, p0, Lcn/haorui/sdk/adsail_ad/AdNative$10;->val$imageView:Lcn/haorui/sdk/core/view/gif/GifImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/io/IOException;)V
    .locals 3
    .param p1    # Ljava/io/IOException;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    iget-object p1, p0, Lcn/haorui/sdk/adsail_ad/AdNative$10;->this$0:Lcn/haorui/sdk/adsail_ad/AdNative;

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/AdNative$10;->val$adListener:Lcn/haorui/sdk/adsail_ad/splash/ISplashAdListener;

    sget-object v1, Lcn/haorui/sdk/core/exception/a;->a:Ljava/lang/Integer;

    const-string v2, "\u56fe\u7247\u8d44\u6e90\u52a0\u8f7d\u9519\u8bef"

    invoke-static {p1, v0, v2, v1}, Lcn/haorui/sdk/adsail_ad/AdNative;->access$000(Lcn/haorui/sdk/adsail_ad/AdNative;Lcn/haorui/sdk/adsail_ad/IAdListener;Ljava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method

.method public onResponse(Lcn/haorui/sdk/core/domain/HttpResponse;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/haorui/sdk/core/domain/HttpResponse<",
            "[B>;)V"
        }
    .end annotation

    invoke-virtual {p1}, Lcn/haorui/sdk/core/domain/HttpResponse;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/AdNative$10;->this$0:Lcn/haorui/sdk/adsail_ad/AdNative;

    iget-object v1, p0, Lcn/haorui/sdk/adsail_ad/AdNative$10;->val$nativeAd:Lcn/haorui/sdk/adsail_ad/splash/SplashAdImpl;

    iget-object v2, p0, Lcn/haorui/sdk/adsail_ad/AdNative$10;->val$adRoot:Lcn/haorui/sdk/adsail_ad/splash/HRSplashRootView;

    iget-object v3, p0, Lcn/haorui/sdk/adsail_ad/AdNative$10;->val$adListener:Lcn/haorui/sdk/adsail_ad/splash/ISplashAdListener;

    iget-object v4, p0, Lcn/haorui/sdk/adsail_ad/AdNative$10;->val$customSkipButton:Landroid/view/View;

    invoke-static {v0, v1, v2, v3, v4}, Lcn/haorui/sdk/adsail_ad/AdNative;->access$800(Lcn/haorui/sdk/adsail_ad/AdNative;Lcn/haorui/sdk/adsail_ad/splash/SplashAdImpl;Lcn/haorui/sdk/adsail_ad/splash/HRSplashRootView;Lcn/haorui/sdk/adsail_ad/splash/ISplashAdListener;Landroid/view/View;)Lcn/haorui/sdk/adsail_ad/splash/SplashSkipView;

    invoke-virtual {p1}, Lcn/haorui/sdk/core/domain/HttpResponse;->getResponseBody()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    if-eqz p1, :cond_3

    array-length v0, p1

    if-lez v0, :cond_3

    array-length v0, p1

    invoke-static {}, Lcn/haorui/sdk/core/utils/MemoryUtil;->getTraceMemory()I

    move-result v1

    if-lt v0, v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/AdNative$10;->this$0:Lcn/haorui/sdk/adsail_ad/AdNative;

    invoke-static {v0, p1}, Lcn/haorui/sdk/adsail_ad/AdNative;->access$700(Lcn/haorui/sdk/adsail_ad/AdNative;[B)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/AdNative$10;->val$imageView:Lcn/haorui/sdk/core/view/gif/GifImageView;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Lcn/haorui/sdk/core/view/gif/GifImageView;->setBytes([B)V

    iget-object p1, p0, Lcn/haorui/sdk/adsail_ad/AdNative$10;->val$nativeAd:Lcn/haorui/sdk/adsail_ad/splash/SplashAdImpl;

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/AdNative$10;->val$imageView:Lcn/haorui/sdk/core/view/gif/GifImageView;

    invoke-virtual {v0}, Lcn/haorui/sdk/core/view/gif/GifImageView;->getGifWidth()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/haorui/sdk/core/ad/splash/SplashAd;->setWidth(Ljava/lang/Integer;)V

    iget-object p1, p0, Lcn/haorui/sdk/adsail_ad/AdNative$10;->val$nativeAd:Lcn/haorui/sdk/adsail_ad/splash/SplashAdImpl;

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/AdNative$10;->val$imageView:Lcn/haorui/sdk/core/view/gif/GifImageView;

    invoke-virtual {v0}, Lcn/haorui/sdk/core/view/gif/GifImageView;->getGifHeight()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/haorui/sdk/core/ad/splash/SplashAd;->setHeight(Ljava/lang/Integer;)V

    iget-object p1, p0, Lcn/haorui/sdk/adsail_ad/AdNative$10;->val$imageView:Lcn/haorui/sdk/core/view/gif/GifImageView;

    invoke-virtual {p1}, Lcn/haorui/sdk/core/view/gif/GifImageView;->startAnimation()V

    goto :goto_0

    :cond_1
    array-length v0, p1

    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/AdNative$10;->val$imageView:Lcn/haorui/sdk/core/view/gif/GifImageView;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/AdNative$10;->val$nativeAd:Lcn/haorui/sdk/adsail_ad/splash/SplashAdImpl;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/haorui/sdk/core/ad/splash/SplashAd;->setWidth(Ljava/lang/Integer;)V

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/AdNative$10;->val$nativeAd:Lcn/haorui/sdk/adsail_ad/splash/SplashAdImpl;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcn/haorui/sdk/core/ad/splash/SplashAd;->setHeight(Ljava/lang/Integer;)V

    :cond_2
    :goto_0
    iget-object p1, p0, Lcn/haorui/sdk/adsail_ad/AdNative$10;->val$adListener:Lcn/haorui/sdk/adsail_ad/splash/ISplashAdListener;

    if-eqz p1, :cond_4

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/AdNative$10;->val$nativeAd:Lcn/haorui/sdk/adsail_ad/splash/SplashAdImpl;

    invoke-interface {p1, v0}, Lcn/haorui/sdk/adsail_ad/splash/ISplashAdListener;->onAdReady(Lcn/haorui/sdk/adsail_ad/splash/SplashAdImpl;)V

    goto :goto_2

    :cond_3
    :goto_1
    iget-object p1, p0, Lcn/haorui/sdk/adsail_ad/AdNative$10;->this$0:Lcn/haorui/sdk/adsail_ad/AdNative;

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/AdNative$10;->val$adListener:Lcn/haorui/sdk/adsail_ad/splash/ISplashAdListener;

    sget-object v1, Lcn/haorui/sdk/core/exception/a;->a:Ljava/lang/Integer;

    const-string v2, "\u56fe\u7247\u8d44\u6e90\u52a0\u8f7d\u9519\u8bef"

    invoke-static {p1, v0, v2, v1}, Lcn/haorui/sdk/adsail_ad/AdNative;->access$000(Lcn/haorui/sdk/adsail_ad/AdNative;Lcn/haorui/sdk/adsail_ad/IAdListener;Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_4
    :goto_2
    return-void
.end method
