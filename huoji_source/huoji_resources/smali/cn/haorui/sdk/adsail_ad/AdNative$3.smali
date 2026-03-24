.class public Lcn/haorui/sdk/adsail_ad/AdNative$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcn/haorui/sdk/core/utils/HttpGetBytesCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/haorui/sdk/adsail_ad/AdNative;->loadNativeSplash(Lcn/haorui/sdk/adsail_ad/splash/ISplashAdListener;Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot;Lcn/haorui/sdk/adsail_ad/splash/SplashAdImpl;Lcn/haorui/sdk/adsail_ad/splash/HRSplashRootView;ZLandroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcn/haorui/sdk/adsail_ad/AdNative;

.field public final synthetic val$adListener:Lcn/haorui/sdk/adsail_ad/splash/ISplashAdListener;

.field public final synthetic val$adRoot:Lcn/haorui/sdk/adsail_ad/splash/HRSplashRootView;

.field public final synthetic val$adSlot:Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot;

.field public final synthetic val$customSkipButton:Landroid/view/View;

.field public final synthetic val$nativeAd:Lcn/haorui/sdk/adsail_ad/splash/SplashAdImpl;


# direct methods
.method public constructor <init>(Lcn/haorui/sdk/adsail_ad/AdNative;Lcn/haorui/sdk/adsail_ad/splash/ISplashAdListener;Lcn/haorui/sdk/adsail_ad/splash/SplashAdImpl;Lcn/haorui/sdk/adsail_ad/splash/HRSplashRootView;Landroid/view/View;Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/adsail_ad/AdNative$3;->this$0:Lcn/haorui/sdk/adsail_ad/AdNative;

    iput-object p2, p0, Lcn/haorui/sdk/adsail_ad/AdNative$3;->val$adListener:Lcn/haorui/sdk/adsail_ad/splash/ISplashAdListener;

    iput-object p3, p0, Lcn/haorui/sdk/adsail_ad/AdNative$3;->val$nativeAd:Lcn/haorui/sdk/adsail_ad/splash/SplashAdImpl;

    iput-object p4, p0, Lcn/haorui/sdk/adsail_ad/AdNative$3;->val$adRoot:Lcn/haorui/sdk/adsail_ad/splash/HRSplashRootView;

    iput-object p5, p0, Lcn/haorui/sdk/adsail_ad/AdNative$3;->val$customSkipButton:Landroid/view/View;

    iput-object p6, p0, Lcn/haorui/sdk/adsail_ad/AdNative$3;->val$adSlot:Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot;

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

    iget-object p1, p0, Lcn/haorui/sdk/adsail_ad/AdNative$3;->this$0:Lcn/haorui/sdk/adsail_ad/AdNative;

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/AdNative$3;->val$adListener:Lcn/haorui/sdk/adsail_ad/splash/ISplashAdListener;

    sget-object v1, Lcn/haorui/sdk/core/exception/a;->a:Ljava/lang/Integer;

    const-string v2, "\u56fe\u7247\u8d44\u6e90\u52a0\u8f7d\u9519\u8bef"

    invoke-static {p1, v0, v2, v1}, Lcn/haorui/sdk/adsail_ad/AdNative;->access$000(Lcn/haorui/sdk/adsail_ad/AdNative;Lcn/haorui/sdk/adsail_ad/IAdListener;Ljava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method

.method public onResponse(Lcn/haorui/sdk/core/domain/HttpResponse;)V
    .locals 8
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

    move-object v1, p1

    check-cast v1, [B

    if-eqz v1, :cond_2

    array-length p1, v1

    if-lez p1, :cond_2

    array-length p1, v1

    invoke-static {}, Lcn/haorui/sdk/core/utils/MemoryUtil;->getTraceMemory()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lcn/haorui/sdk/adsail_ad/AdNative$3;->this$0:Lcn/haorui/sdk/adsail_ad/AdNative;

    invoke-static {p1, v1}, Lcn/haorui/sdk/adsail_ad/AdNative;->access$700(Lcn/haorui/sdk/adsail_ad/AdNative;[B)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcn/haorui/sdk/adsail_ad/AdNative$3;->this$0:Lcn/haorui/sdk/adsail_ad/AdNative;

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/AdNative$3;->val$nativeAd:Lcn/haorui/sdk/adsail_ad/splash/SplashAdImpl;

    iget-object v2, p0, Lcn/haorui/sdk/adsail_ad/AdNative$3;->val$adRoot:Lcn/haorui/sdk/adsail_ad/splash/HRSplashRootView;

    iget-object v3, p0, Lcn/haorui/sdk/adsail_ad/AdNative$3;->val$adListener:Lcn/haorui/sdk/adsail_ad/splash/ISplashAdListener;

    iget-object v4, p0, Lcn/haorui/sdk/adsail_ad/AdNative$3;->val$customSkipButton:Landroid/view/View;

    invoke-static {p1, v0, v2, v3, v4}, Lcn/haorui/sdk/adsail_ad/AdNative;->access$800(Lcn/haorui/sdk/adsail_ad/AdNative;Lcn/haorui/sdk/adsail_ad/splash/SplashAdImpl;Lcn/haorui/sdk/adsail_ad/splash/HRSplashRootView;Lcn/haorui/sdk/adsail_ad/splash/ISplashAdListener;Landroid/view/View;)Lcn/haorui/sdk/adsail_ad/splash/SplashSkipView;

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/AdNative$3;->this$0:Lcn/haorui/sdk/adsail_ad/AdNative;

    iget-object v2, p0, Lcn/haorui/sdk/adsail_ad/AdNative$3;->val$adRoot:Lcn/haorui/sdk/adsail_ad/splash/HRSplashRootView;

    iget-object v4, p0, Lcn/haorui/sdk/adsail_ad/AdNative$3;->val$adSlot:Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot;

    iget-object v5, p0, Lcn/haorui/sdk/adsail_ad/AdNative$3;->val$nativeAd:Lcn/haorui/sdk/adsail_ad/splash/SplashAdImpl;

    iget-object v6, p0, Lcn/haorui/sdk/adsail_ad/AdNative$3;->val$adListener:Lcn/haorui/sdk/adsail_ad/splash/ISplashAdListener;

    const/4 v3, 0x1

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Lcn/haorui/sdk/adsail_ad/AdNative;->access$900(Lcn/haorui/sdk/adsail_ad/AdNative;[BLandroid/view/View;ZLcn/haorui/sdk/core/ad/BaseAdSlot;Lcn/haorui/sdk/adsail_ad/splash/SplashAdImpl;Lcn/haorui/sdk/adsail_ad/splash/ISplashAdListener;Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcn/haorui/sdk/adsail_ad/AdNative$3;->this$0:Lcn/haorui/sdk/adsail_ad/AdNative;

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/AdNative$3;->val$nativeAd:Lcn/haorui/sdk/adsail_ad/splash/SplashAdImpl;

    iget-object v2, p0, Lcn/haorui/sdk/adsail_ad/AdNative$3;->val$adRoot:Lcn/haorui/sdk/adsail_ad/splash/HRSplashRootView;

    iget-object v3, p0, Lcn/haorui/sdk/adsail_ad/AdNative$3;->val$adListener:Lcn/haorui/sdk/adsail_ad/splash/ISplashAdListener;

    iget-object v4, p0, Lcn/haorui/sdk/adsail_ad/AdNative$3;->val$customSkipButton:Landroid/view/View;

    invoke-static {p1, v0, v2, v3, v4}, Lcn/haorui/sdk/adsail_ad/AdNative;->access$800(Lcn/haorui/sdk/adsail_ad/AdNative;Lcn/haorui/sdk/adsail_ad/splash/SplashAdImpl;Lcn/haorui/sdk/adsail_ad/splash/HRSplashRootView;Lcn/haorui/sdk/adsail_ad/splash/ISplashAdListener;Landroid/view/View;)Lcn/haorui/sdk/adsail_ad/splash/SplashSkipView;

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/AdNative$3;->this$0:Lcn/haorui/sdk/adsail_ad/AdNative;

    iget-object v2, p0, Lcn/haorui/sdk/adsail_ad/AdNative$3;->val$adRoot:Lcn/haorui/sdk/adsail_ad/splash/HRSplashRootView;

    iget-object v4, p0, Lcn/haorui/sdk/adsail_ad/AdNative$3;->val$adSlot:Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot;

    iget-object v5, p0, Lcn/haorui/sdk/adsail_ad/AdNative$3;->val$nativeAd:Lcn/haorui/sdk/adsail_ad/splash/SplashAdImpl;

    iget-object v6, p0, Lcn/haorui/sdk/adsail_ad/AdNative$3;->val$adListener:Lcn/haorui/sdk/adsail_ad/splash/ISplashAdListener;

    const/4 v3, 0x0

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Lcn/haorui/sdk/adsail_ad/AdNative;->access$900(Lcn/haorui/sdk/adsail_ad/AdNative;[BLandroid/view/View;ZLcn/haorui/sdk/core/ad/BaseAdSlot;Lcn/haorui/sdk/adsail_ad/splash/SplashAdImpl;Lcn/haorui/sdk/adsail_ad/splash/ISplashAdListener;Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;)V

    :goto_0
    iget-object p1, p0, Lcn/haorui/sdk/adsail_ad/AdNative$3;->val$adListener:Lcn/haorui/sdk/adsail_ad/splash/ISplashAdListener;

    if-eqz p1, :cond_3

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/AdNative$3;->val$nativeAd:Lcn/haorui/sdk/adsail_ad/splash/SplashAdImpl;

    invoke-interface {p1, v0}, Lcn/haorui/sdk/adsail_ad/splash/ISplashAdListener;->onAdReady(Lcn/haorui/sdk/adsail_ad/splash/SplashAdImpl;)V

    goto :goto_2

    :cond_2
    :goto_1
    iget-object p1, p0, Lcn/haorui/sdk/adsail_ad/AdNative$3;->this$0:Lcn/haorui/sdk/adsail_ad/AdNative;

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/AdNative$3;->val$adListener:Lcn/haorui/sdk/adsail_ad/splash/ISplashAdListener;

    sget-object v1, Lcn/haorui/sdk/core/exception/a;->a:Ljava/lang/Integer;

    const-string v2, "\u56fe\u7247\u8d44\u6e90\u52a0\u8f7d\u9519\u8bef"

    invoke-static {p1, v0, v2, v1}, Lcn/haorui/sdk/adsail_ad/AdNative;->access$000(Lcn/haorui/sdk/adsail_ad/AdNative;Lcn/haorui/sdk/adsail_ad/IAdListener;Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_3
    :goto_2
    return-void
.end method
