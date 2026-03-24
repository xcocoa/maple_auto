.class public Lcn/haorui/sdk/adsail_ad/AdNative$5$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcn/haorui/sdk/adsail_ad/nativ/INativeAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/haorui/sdk/adsail_ad/AdNative$5;->callback(Ljava/lang/String;Ljava/io/File;Lz2/o000O;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcn/haorui/sdk/adsail_ad/AdNative$5;


# direct methods
.method public constructor <init>(Lcn/haorui/sdk/adsail_ad/AdNative$5;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/adsail_ad/AdNative$5$1;->this$1:Lcn/haorui/sdk/adsail_ad/AdNative$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onADError(Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 2

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/AdNative$5$1;->this$1:Lcn/haorui/sdk/adsail_ad/AdNative$5;

    iget-object v0, v0, Lcn/haorui/sdk/adsail_ad/AdNative$5;->val$adSlot:Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot;

    invoke-virtual {v0}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getErrorUrl()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/AdNative$5$1;->this$1:Lcn/haorui/sdk/adsail_ad/AdNative$5;

    iget-object v0, v0, Lcn/haorui/sdk/adsail_ad/AdNative$5;->val$adSlot:Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot;

    invoke-virtual {v0}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getErrorUrl()[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {v0, p2, p1}, Lcn/haorui/sdk/core/utils/HttpUtil;->asyncGetErrorReport(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/AdNative$5$1;->this$1:Lcn/haorui/sdk/adsail_ad/AdNative$5;

    iget-object v1, v0, Lcn/haorui/sdk/adsail_ad/AdNative$5;->this$0:Lcn/haorui/sdk/adsail_ad/AdNative;

    iget-object v0, v0, Lcn/haorui/sdk/adsail_ad/AdNative$5;->val$adListener:Lcn/haorui/sdk/adsail_ad/splash/ISplashAdListener;

    invoke-static {v1, v0, p1, p2}, Lcn/haorui/sdk/adsail_ad/AdNative;->access$000(Lcn/haorui/sdk/adsail_ad/AdNative;Lcn/haorui/sdk/adsail_ad/IAdListener;Ljava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method

.method public onADExposure()V
    .locals 0

    return-void
.end method

.method public bridge synthetic onADLoaded(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcn/haorui/sdk/adsail_ad/AdNative$5$1;->onADLoaded(Ljava/util/List;)V

    return-void
.end method

.method public onADLoaded(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/haorui/sdk/adsail_ad/nativ/NativeAdData;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onAdRenderFail(Ljava/lang/String;I)V
    .locals 0

    return-void
.end method
