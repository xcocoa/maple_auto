.class public Lcn/haorui/sdk/platform/hr/draw/HRDrawHRAdWrapper$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcn/haorui/sdk/core/ad/draw/DrawAdListener;


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

.field public final synthetic val$drawRoot:Lcn/haorui/sdk/adsail_ad/draw/HRDrawRootView;


# direct methods
.method public constructor <init>(Lcn/haorui/sdk/platform/hr/draw/HRDrawHRAdWrapper;Lcn/haorui/sdk/adsail_ad/draw/HRDrawRootView;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/platform/hr/draw/HRDrawHRAdWrapper$2;->this$0:Lcn/haorui/sdk/platform/hr/draw/HRDrawHRAdWrapper;

    iput-object p2, p0, Lcn/haorui/sdk/platform/hr/draw/HRDrawHRAdWrapper$2;->val$drawRoot:Lcn/haorui/sdk/adsail_ad/draw/HRDrawRootView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClosed()V
    .locals 0

    return-void
.end method

.method public onAdError()V
    .locals 0

    return-void
.end method

.method public onAdExposure()V
    .locals 2

    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/draw/HRDrawHRAdWrapper$2;->this$0:Lcn/haorui/sdk/platform/hr/draw/HRDrawHRAdWrapper;

    invoke-static {v0}, Lcn/haorui/sdk/platform/hr/draw/HRDrawHRAdWrapper;->access$1000(Lcn/haorui/sdk/platform/hr/draw/HRDrawHRAdWrapper;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/draw/HRDrawHRAdWrapper$2;->val$drawRoot:Lcn/haorui/sdk/adsail_ad/draw/HRDrawRootView;

    if-eqz v0, :cond_0

    new-instance v1, Lcn/haorui/sdk/platform/hr/draw/HRDrawHRAdWrapper$2$1;

    invoke-direct {v1, p0}, Lcn/haorui/sdk/platform/hr/draw/HRDrawHRAdWrapper$2$1;-><init>(Lcn/haorui/sdk/platform/hr/draw/HRDrawHRAdWrapper$2;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public onAdLoaded(Lcn/haorui/sdk/core/ad/draw/IDrawAd;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic onAdLoaded(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcn/haorui/sdk/core/ad/draw/IDrawAd;

    invoke-virtual {p0, p1}, Lcn/haorui/sdk/platform/hr/draw/HRDrawHRAdWrapper$2;->onAdLoaded(Lcn/haorui/sdk/core/ad/draw/IDrawAd;)V

    return-void
.end method

.method public onAdPlatformError(Lcn/haorui/sdk/core/loader/AdPlatformError;)V
    .locals 0

    return-void
.end method

.method public onAdReady(Lcn/haorui/sdk/core/ad/draw/IDrawAd;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic onAdReady(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcn/haorui/sdk/core/ad/draw/IDrawAd;

    invoke-virtual {p0, p1}, Lcn/haorui/sdk/platform/hr/draw/HRDrawHRAdWrapper$2;->onAdReady(Lcn/haorui/sdk/core/ad/draw/IDrawAd;)V

    return-void
.end method

.method public onAdRenderFail(Ljava/lang/String;I)V
    .locals 0

    return-void
.end method
