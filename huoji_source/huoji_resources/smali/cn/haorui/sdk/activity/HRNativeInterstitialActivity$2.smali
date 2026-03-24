.class public Lcn/haorui/sdk/activity/HRNativeInterstitialActivity$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcn/haorui/sdk/core/utils/HttpGetBytesCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/haorui/sdk/activity/HRNativeInterstitialActivity;->handleMsAd()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcn/haorui/sdk/activity/HRNativeInterstitialActivity;

.field public final synthetic val$adSlot:Lcn/haorui/sdk/adsail_ad/interstitial/InterstitialAdSlot;

.field public final synthetic val$sdkAd:Lcn/haorui/sdk/adsail_ad/interstitial/NativeInterstitialAd;


# direct methods
.method public constructor <init>(Lcn/haorui/sdk/activity/HRNativeInterstitialActivity;Lcn/haorui/sdk/adsail_ad/interstitial/NativeInterstitialAd;Lcn/haorui/sdk/adsail_ad/interstitial/InterstitialAdSlot;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/activity/HRNativeInterstitialActivity$2;->this$0:Lcn/haorui/sdk/activity/HRNativeInterstitialActivity;

    iput-object p2, p0, Lcn/haorui/sdk/activity/HRNativeInterstitialActivity$2;->val$sdkAd:Lcn/haorui/sdk/adsail_ad/interstitial/NativeInterstitialAd;

    iput-object p3, p0, Lcn/haorui/sdk/activity/HRNativeInterstitialActivity$2;->val$adSlot:Lcn/haorui/sdk/adsail_ad/interstitial/InterstitialAdSlot;

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

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcn/haorui/sdk/core/domain/HttpResponse;->getResponseBody()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    if-eqz p1, :cond_2

    array-length v0, p1

    if-lez v0, :cond_2

    iget-object v0, p0, Lcn/haorui/sdk/activity/HRNativeInterstitialActivity$2;->this$0:Lcn/haorui/sdk/activity/HRNativeInterstitialActivity;

    invoke-static {v0, p1}, Lcn/haorui/sdk/activity/HRNativeInterstitialActivity;->access$100(Lcn/haorui/sdk/activity/HRNativeInterstitialActivity;[B)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/haorui/sdk/activity/HRNativeInterstitialActivity$2;->this$0:Lcn/haorui/sdk/activity/HRNativeInterstitialActivity;

    invoke-static {v0}, Lcn/haorui/sdk/activity/HRNativeInterstitialActivity;->access$200(Lcn/haorui/sdk/activity/HRNativeInterstitialActivity;)Lcn/haorui/sdk/core/view/gif/GifImageView;

    move-result-object v0

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcn/haorui/sdk/activity/HRNativeInterstitialActivity$2;->this$0:Lcn/haorui/sdk/activity/HRNativeInterstitialActivity;

    invoke-static {v0}, Lcn/haorui/sdk/activity/HRNativeInterstitialActivity;->access$200(Lcn/haorui/sdk/activity/HRNativeInterstitialActivity;)Lcn/haorui/sdk/core/view/gif/GifImageView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/haorui/sdk/core/view/gif/GifImageView;->setBytes([B)V

    iget-object p1, p0, Lcn/haorui/sdk/activity/HRNativeInterstitialActivity$2;->this$0:Lcn/haorui/sdk/activity/HRNativeInterstitialActivity;

    invoke-static {p1}, Lcn/haorui/sdk/activity/HRNativeInterstitialActivity;->access$200(Lcn/haorui/sdk/activity/HRNativeInterstitialActivity;)Lcn/haorui/sdk/core/view/gif/GifImageView;

    move-result-object p1

    invoke-virtual {p1}, Lcn/haorui/sdk/core/view/gif/GifImageView;->startAnimation()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcn/haorui/sdk/activity/HRNativeInterstitialActivity$2;->this$0:Lcn/haorui/sdk/activity/HRNativeInterstitialActivity;

    invoke-static {v0}, Lcn/haorui/sdk/activity/HRNativeInterstitialActivity;->access$200(Lcn/haorui/sdk/activity/HRNativeInterstitialActivity;)Lcn/haorui/sdk/core/view/gif/GifImageView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_1
    :goto_0
    iget-object p1, p0, Lcn/haorui/sdk/activity/HRNativeInterstitialActivity$2;->val$sdkAd:Lcn/haorui/sdk/adsail_ad/interstitial/NativeInterstitialAd;

    invoke-virtual {p1}, Lcn/haorui/sdk/adsail_ad/interstitial/NativeInterstitialAd;->sendExposure()V

    iget-object p1, p0, Lcn/haorui/sdk/activity/HRNativeInterstitialActivity$2;->this$0:Lcn/haorui/sdk/activity/HRNativeInterstitialActivity;

    iget-object v0, p0, Lcn/haorui/sdk/activity/HRNativeInterstitialActivity$2;->val$adSlot:Lcn/haorui/sdk/adsail_ad/interstitial/InterstitialAdSlot;

    invoke-static {p1, v0}, Lcn/haorui/sdk/activity/HRNativeInterstitialActivity;->access$300(Lcn/haorui/sdk/activity/HRNativeInterstitialActivity;Lcn/haorui/sdk/adsail_ad/interstitial/InterstitialAdSlot;)V

    :cond_2
    return-void
.end method
