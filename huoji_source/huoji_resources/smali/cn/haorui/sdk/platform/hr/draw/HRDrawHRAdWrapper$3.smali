.class public Lcn/haorui/sdk/platform/hr/draw/HRDrawHRAdWrapper$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcn/haorui/sdk/core/utils/HttpGetBytesCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/haorui/sdk/platform/hr/draw/HRDrawHRAdWrapper;->loadImage()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcn/haorui/sdk/platform/hr/draw/HRDrawHRAdWrapper;

.field public final synthetic val$HRDrawAd:Lcn/haorui/sdk/platform/hr/draw/HRDrawAd;

.field public final synthetic val$drawRoot:Lcn/haorui/sdk/adsail_ad/draw/HRDrawRootView;

.field public final synthetic val$imageView:Lcn/haorui/sdk/core/view/gif/GifImageView;

.field public final synthetic val$logo:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Lcn/haorui/sdk/platform/hr/draw/HRDrawHRAdWrapper;Lcn/haorui/sdk/core/view/gif/GifImageView;Landroid/widget/ImageView;Lcn/haorui/sdk/platform/hr/draw/HRDrawAd;Lcn/haorui/sdk/adsail_ad/draw/HRDrawRootView;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/platform/hr/draw/HRDrawHRAdWrapper$3;->this$0:Lcn/haorui/sdk/platform/hr/draw/HRDrawHRAdWrapper;

    iput-object p2, p0, Lcn/haorui/sdk/platform/hr/draw/HRDrawHRAdWrapper$3;->val$imageView:Lcn/haorui/sdk/core/view/gif/GifImageView;

    iput-object p3, p0, Lcn/haorui/sdk/platform/hr/draw/HRDrawHRAdWrapper$3;->val$logo:Landroid/widget/ImageView;

    iput-object p4, p0, Lcn/haorui/sdk/platform/hr/draw/HRDrawHRAdWrapper$3;->val$HRDrawAd:Lcn/haorui/sdk/platform/hr/draw/HRDrawAd;

    iput-object p5, p0, Lcn/haorui/sdk/platform/hr/draw/HRDrawHRAdWrapper$3;->val$drawRoot:Lcn/haorui/sdk/adsail_ad/draw/HRDrawRootView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/io/IOException;)V
    .locals 2
    .param p1    # Ljava/io/IOException;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    new-instance p1, Lcn/haorui/sdk/platform/hr/HRPlatformError;

    sget-object v0, Lcn/haorui/sdk/core/exception/a;->a:Ljava/lang/Integer;

    const-string v1, "\u56fe\u7247\u8d44\u6e90\u52a0\u8f7d\u9519\u8bef"

    invoke-direct {p1, v1, v0}, Lcn/haorui/sdk/platform/hr/HRPlatformError;-><init>(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/draw/HRDrawHRAdWrapper$3;->this$0:Lcn/haorui/sdk/platform/hr/draw/HRDrawHRAdWrapper;

    invoke-virtual {v0}, Lcn/haorui/sdk/platform/BasePlatformLoader;->getAdLoader()Lcn/haorui/sdk/core/loader/b;

    move-result-object v0

    check-cast v0, Lcn/haorui/sdk/core/ad/draw/DrawAdLoader;

    invoke-virtual {v0}, Lcn/haorui/sdk/core/loader/b;->getLoaderListener()Lcn/haorui/sdk/core/loader/IAdLoadListener;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/haorui/sdk/core/loader/AdPlatformError;->post(Lcn/haorui/sdk/core/loader/IAdLoadListener;)V

    return-void
.end method

.method public onResponse(Lcn/haorui/sdk/core/domain/HttpResponse;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/haorui/sdk/core/domain/HttpResponse<",
            "[B>;)V"
        }
    .end annotation

    invoke-virtual {p1}, Lcn/haorui/sdk/core/domain/HttpResponse;->isSuccessful()Z

    move-result v0

    const-string v1, "\u56fe\u7247\u8d44\u6e90\u52a0\u8f7d\u9519\u8bef"

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcn/haorui/sdk/core/domain/HttpResponse;->getResponseBody()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    if-eqz p1, :cond_0

    array-length v0, p1

    if-lez v0, :cond_0

    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/draw/HRDrawHRAdWrapper$3;->this$0:Lcn/haorui/sdk/platform/hr/draw/HRDrawHRAdWrapper;

    iget-object v1, p0, Lcn/haorui/sdk/platform/hr/draw/HRDrawHRAdWrapper$3;->val$imageView:Lcn/haorui/sdk/core/view/gif/GifImageView;

    invoke-static {v0, p1, v1}, Lcn/haorui/sdk/platform/hr/draw/HRDrawHRAdWrapper;->access$1300(Lcn/haorui/sdk/platform/hr/draw/HRDrawHRAdWrapper;[BLcn/haorui/sdk/core/view/gif/GifImageView;)V

    array-length v0, p1

    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object p1

    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/draw/HRDrawHRAdWrapper$3;->val$logo:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object p1, p0, Lcn/haorui/sdk/platform/hr/draw/HRDrawHRAdWrapper$3;->this$0:Lcn/haorui/sdk/platform/hr/draw/HRDrawHRAdWrapper;

    invoke-virtual {p1}, Lcn/haorui/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcn/haorui/sdk/core/loader/IAdLoadListener;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcn/haorui/sdk/platform/hr/draw/HRDrawHRAdWrapper$3;->val$HRDrawAd:Lcn/haorui/sdk/platform/hr/draw/HRDrawAd;

    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/draw/HRDrawHRAdWrapper$3;->val$drawRoot:Lcn/haorui/sdk/adsail_ad/draw/HRDrawRootView;

    invoke-virtual {p1, v0}, Lcn/haorui/sdk/core/ad/BaseAd;->setAdView(Landroid/view/View;)V

    iget-object p1, p0, Lcn/haorui/sdk/platform/hr/draw/HRDrawHRAdWrapper$3;->this$0:Lcn/haorui/sdk/platform/hr/draw/HRDrawHRAdWrapper;

    invoke-virtual {p1}, Lcn/haorui/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcn/haorui/sdk/core/loader/IAdLoadListener;

    move-result-object p1

    check-cast p1, Lcn/haorui/sdk/core/ad/draw/DrawAdListener;

    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/draw/HRDrawHRAdWrapper$3;->val$HRDrawAd:Lcn/haorui/sdk/platform/hr/draw/HRDrawAd;

    invoke-interface {p1, v0}, Lcn/haorui/sdk/core/loader/IAdLoadListener;->onAdLoaded(Ljava/lang/Object;)V

    iget-object p1, p0, Lcn/haorui/sdk/platform/hr/draw/HRDrawHRAdWrapper$3;->this$0:Lcn/haorui/sdk/platform/hr/draw/HRDrawHRAdWrapper;

    invoke-virtual {p1}, Lcn/haorui/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcn/haorui/sdk/core/loader/IAdLoadListener;

    move-result-object p1

    check-cast p1, Lcn/haorui/sdk/core/ad/draw/DrawAdListener;

    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/draw/HRDrawHRAdWrapper$3;->val$HRDrawAd:Lcn/haorui/sdk/platform/hr/draw/HRDrawAd;

    invoke-interface {p1, v0}, Lcn/haorui/sdk/core/loader/IAdLoadListener;->onAdReady(Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    new-instance p1, Lcn/haorui/sdk/platform/hr/HRPlatformError;

    sget-object v0, Lcn/haorui/sdk/core/exception/a;->a:Ljava/lang/Integer;

    invoke-direct {p1, v1, v0}, Lcn/haorui/sdk/platform/hr/HRPlatformError;-><init>(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0

    :cond_1
    new-instance p1, Lcn/haorui/sdk/platform/hr/HRPlatformError;

    sget-object v0, Lcn/haorui/sdk/core/exception/a;->a:Ljava/lang/Integer;

    invoke-direct {p1, v1, v0}, Lcn/haorui/sdk/platform/hr/HRPlatformError;-><init>(Ljava/lang/String;Ljava/lang/Integer;)V

    :goto_0
    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/draw/HRDrawHRAdWrapper$3;->this$0:Lcn/haorui/sdk/platform/hr/draw/HRDrawHRAdWrapper;

    invoke-virtual {v0}, Lcn/haorui/sdk/platform/BasePlatformLoader;->getAdLoader()Lcn/haorui/sdk/core/loader/b;

    move-result-object v0

    check-cast v0, Lcn/haorui/sdk/core/ad/draw/DrawAdLoader;

    invoke-virtual {v0}, Lcn/haorui/sdk/core/loader/b;->getLoaderListener()Lcn/haorui/sdk/core/loader/IAdLoadListener;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/haorui/sdk/core/loader/AdPlatformError;->post(Lcn/haorui/sdk/core/loader/IAdLoadListener;)V

    :cond_2
    :goto_1
    return-void
.end method
