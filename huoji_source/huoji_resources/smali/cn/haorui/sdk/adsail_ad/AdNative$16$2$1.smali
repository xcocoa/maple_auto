.class public Lcn/haorui/sdk/adsail_ad/AdNative$16$2$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/haorui/sdk/adsail_ad/AdNative$16$2;->onVideoCompleted()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$2:Lcn/haorui/sdk/adsail_ad/AdNative$16$2;


# direct methods
.method public constructor <init>(Lcn/haorui/sdk/adsail_ad/AdNative$16$2;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/adsail_ad/AdNative$16$2$1;->this$2:Lcn/haorui/sdk/adsail_ad/AdNative$16$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/AdNative$16$2$1;->this$2:Lcn/haorui/sdk/adsail_ad/AdNative$16$2;

    iget-object v0, v0, Lcn/haorui/sdk/adsail_ad/AdNative$16$2;->val$mediaView:Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;

    invoke-virtual {v0}, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->destroy()V

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/AdNative$16$2$1;->this$2:Lcn/haorui/sdk/adsail_ad/AdNative$16$2;

    iget-object v0, v0, Lcn/haorui/sdk/adsail_ad/AdNative$16$2;->this$1:Lcn/haorui/sdk/adsail_ad/AdNative$16;

    iget-object v0, v0, Lcn/haorui/sdk/adsail_ad/AdNative$16;->val$nativeAd:Lcn/haorui/sdk/adsail_ad/splash/SplashAdImpl;

    invoke-virtual {v0}, Lcn/haorui/sdk/core/ad/BaseAd;->getAdView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v2, v1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    return-void
.end method
