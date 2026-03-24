.class public Lcn/haorui/sdk/adsail_ad/interstitial/NativeInterstitialAd$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcn/haorui/sdk/core/utils/HttpGetBytesCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/haorui/sdk/adsail_ad/interstitial/NativeInterstitialAd;->showNativeAd(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcn/haorui/sdk/adsail_ad/interstitial/NativeInterstitialAd;

.field public final synthetic val$context:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Lcn/haorui/sdk/adsail_ad/interstitial/NativeInterstitialAd;Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/adsail_ad/interstitial/NativeInterstitialAd$1;->this$0:Lcn/haorui/sdk/adsail_ad/interstitial/NativeInterstitialAd;

    iput-object p2, p0, Lcn/haorui/sdk/adsail_ad/interstitial/NativeInterstitialAd$1;->val$context:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/io/IOException;)V
    .locals 0
    .param p1    # Ljava/io/IOException;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    return-void
.end method

.method public onResponse(Lcn/haorui/sdk/core/domain/HttpResponse;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/haorui/sdk/core/domain/HttpResponse<",
            "[B>;)V"
        }
    .end annotation

    const-string v0, "NativeInterstitialAd"

    invoke-virtual {p1}, Lcn/haorui/sdk/core/domain/HttpResponse;->isSuccessful()Z

    move-result v1

    if-eqz v1, :cond_2

    :try_start_0
    invoke-virtual {p1}, Lcn/haorui/sdk/core/domain/HttpResponse;->getResponseBody()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    if-eqz p1, :cond_2

    array-length v1, p1

    if-lez v1, :cond_2

    iget-object v1, p0, Lcn/haorui/sdk/adsail_ad/interstitial/NativeInterstitialAd$1;->this$0:Lcn/haorui/sdk/adsail_ad/interstitial/NativeInterstitialAd;

    invoke-static {v1, p1}, Lcn/haorui/sdk/adsail_ad/interstitial/NativeInterstitialAd;->access$000(Lcn/haorui/sdk/adsail_ad/interstitial/NativeInterstitialAd;[B)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcn/haorui/sdk/core/view/gif/GifImageView;

    iget-object v2, p0, Lcn/haorui/sdk/adsail_ad/interstitial/NativeInterstitialAd$1;->val$context:Landroid/app/Activity;

    invoke-direct {v1, v2}, Lcn/haorui/sdk/core/view/gif/GifImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p1}, Lcn/haorui/sdk/core/view/gif/GifImageView;->setBytes([B)V

    invoke-virtual {v1}, Lcn/haorui/sdk/core/view/gif/GifImageView;->getGifHeight()I

    move-result p1

    invoke-virtual {v1}, Lcn/haorui/sdk/core/view/gif/GifImageView;->getGifWidth()I

    move-result v2

    invoke-virtual {v1}, Lcn/haorui/sdk/core/view/gif/GifImageView;->clear()V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    array-length v2, p1

    invoke-static {p1, v1, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "width="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",height="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/haorui/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-le p1, v2, :cond_1

    iget-object v1, p0, Lcn/haorui/sdk/adsail_ad/interstitial/NativeInterstitialAd$1;->this$0:Lcn/haorui/sdk/adsail_ad/interstitial/NativeInterstitialAd;

    const/4 v3, 0x2

    invoke-static {v1, v3}, Lcn/haorui/sdk/adsail_ad/interstitial/NativeInterstitialAd;->access$102(Lcn/haorui/sdk/adsail_ad/interstitial/NativeInterstitialAd;I)I

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "layout_type="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcn/haorui/sdk/adsail_ad/interstitial/NativeInterstitialAd$1;->this$0:Lcn/haorui/sdk/adsail_ad/interstitial/NativeInterstitialAd;

    invoke-static {v3}, Lcn/haorui/sdk/adsail_ad/interstitial/NativeInterstitialAd;->access$100(Lcn/haorui/sdk/adsail_ad/interstitial/NativeInterstitialAd;)I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/haorui/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/interstitial/NativeInterstitialAd$1;->this$0:Lcn/haorui/sdk/adsail_ad/interstitial/NativeInterstitialAd;

    invoke-static {v0}, Lcn/haorui/sdk/activity/HRNativeInterstitialActivity;->setSdkAd(Ljava/lang/Object;)V

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/interstitial/NativeInterstitialAd$1;->this$0:Lcn/haorui/sdk/adsail_ad/interstitial/NativeInterstitialAd;

    invoke-static {v0}, Lcn/haorui/sdk/adsail_ad/interstitial/NativeInterstitialAd;->access$200(Lcn/haorui/sdk/adsail_ad/interstitial/NativeInterstitialAd;)Lcn/haorui/sdk/platform/hr/interstitial/HRHRAdNativeWrapper;

    move-result-object v0

    invoke-static {v0}, Lcn/haorui/sdk/activity/HRNativeInterstitialActivity;->setAdWrapper(Lcn/haorui/sdk/platform/BasePlatformLoader;)V

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/interstitial/NativeInterstitialAd$1;->this$0:Lcn/haorui/sdk/adsail_ad/interstitial/NativeInterstitialAd;

    invoke-static {v0}, Lcn/haorui/sdk/activity/HRNativeInterstitialActivity;->setMsAd(Lcn/haorui/sdk/core/ad/IAd;)V

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcn/haorui/sdk/adsail_ad/interstitial/NativeInterstitialAd$1;->val$context:Landroid/app/Activity;

    const-class v3, Lcn/haorui/sdk/activity/HRNativeInterstitialActivity;

    invoke-direct {v0, v1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v1, "isClickToClose"

    :try_start_1
    iget-object v3, p0, Lcn/haorui/sdk/adsail_ad/interstitial/NativeInterstitialAd$1;->this$0:Lcn/haorui/sdk/adsail_ad/interstitial/NativeInterstitialAd;

    invoke-static {v3}, Lcn/haorui/sdk/adsail_ad/interstitial/NativeInterstitialAd;->access$200(Lcn/haorui/sdk/adsail_ad/interstitial/NativeInterstitialAd;)Lcn/haorui/sdk/platform/hr/interstitial/HRHRAdNativeWrapper;

    move-result-object v3

    invoke-virtual {v3}, Lcn/haorui/sdk/platform/BasePlatformLoader;->getAdLoader()Lcn/haorui/sdk/core/loader/b;

    move-result-object v3

    check-cast v3, Lcn/haorui/sdk/core/ad/interstitial/InterstitialAdLoader;

    invoke-virtual {v3}, Lcn/haorui/sdk/core/ad/interstitial/InterstitialAdLoader;->getIsClickToClose()Z

    move-result v3

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v1, "act_type"

    :try_start_2
    iget-object v3, p0, Lcn/haorui/sdk/adsail_ad/interstitial/NativeInterstitialAd$1;->this$0:Lcn/haorui/sdk/adsail_ad/interstitial/NativeInterstitialAd;

    invoke-virtual {v3}, Lcn/haorui/sdk/adsail_ad/interstitial/NativeInterstitialAd;->getAdSlot()Lcn/haorui/sdk/adsail_ad/interstitial/InterstitialAdSlot;

    move-result-object v3

    invoke-virtual {v3}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getAct_type()I

    move-result v3

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-string v1, "layout_type"

    :try_start_3
    iget-object v3, p0, Lcn/haorui/sdk/adsail_ad/interstitial/NativeInterstitialAd$1;->this$0:Lcn/haorui/sdk/adsail_ad/interstitial/NativeInterstitialAd;

    invoke-static {v3}, Lcn/haorui/sdk/adsail_ad/interstitial/NativeInterstitialAd;->access$100(Lcn/haorui/sdk/adsail_ad/interstitial/NativeInterstitialAd;)I

    move-result v3

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "layout_width"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "layout_height"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object p1, p0, Lcn/haorui/sdk/adsail_ad/interstitial/NativeInterstitialAd$1;->val$context:Landroid/app/Activity;

    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    :goto_1
    return-void
.end method
