.class public Lcn/haorui/sdk/adsail_ad/AdNative$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcn/haorui/sdk/adsail_ad/splash/SplashAdImpl$IAdShowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/haorui/sdk/adsail_ad/AdNative;->loadSplashAd(Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot;Lcn/haorui/sdk/adsail_ad/splash/ISplashAdListener;Lcn/haorui/sdk/platform/hr/splash/HRHRAdNativeWrapper;Landroid/view/View;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcn/haorui/sdk/adsail_ad/AdNative;

.field public final synthetic val$adListener:Lcn/haorui/sdk/adsail_ad/splash/ISplashAdListener;

.field public final synthetic val$adSlot:Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot;

.field public final synthetic val$autoShow:Z

.field public final synthetic val$customSkipButton:Landroid/view/View;

.field public final synthetic val$nativeAd:Lcn/haorui/sdk/adsail_ad/splash/SplashAdImpl;

.field public final synthetic val$wrapper:Lcn/haorui/sdk/platform/hr/splash/HRHRAdNativeWrapper;


# direct methods
.method public constructor <init>(Lcn/haorui/sdk/adsail_ad/AdNative;Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot;Lcn/haorui/sdk/adsail_ad/splash/SplashAdImpl;Lcn/haorui/sdk/adsail_ad/splash/ISplashAdListener;ZLandroid/view/View;Lcn/haorui/sdk/platform/hr/splash/HRHRAdNativeWrapper;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/adsail_ad/AdNative$2;->this$0:Lcn/haorui/sdk/adsail_ad/AdNative;

    iput-object p2, p0, Lcn/haorui/sdk/adsail_ad/AdNative$2;->val$adSlot:Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot;

    iput-object p3, p0, Lcn/haorui/sdk/adsail_ad/AdNative$2;->val$nativeAd:Lcn/haorui/sdk/adsail_ad/splash/SplashAdImpl;

    iput-object p4, p0, Lcn/haorui/sdk/adsail_ad/AdNative$2;->val$adListener:Lcn/haorui/sdk/adsail_ad/splash/ISplashAdListener;

    iput-boolean p5, p0, Lcn/haorui/sdk/adsail_ad/AdNative$2;->val$autoShow:Z

    iput-object p6, p0, Lcn/haorui/sdk/adsail_ad/AdNative$2;->val$customSkipButton:Landroid/view/View;

    iput-object p7, p0, Lcn/haorui/sdk/adsail_ad/AdNative$2;->val$wrapper:Lcn/haorui/sdk/platform/hr/splash/HRHRAdNativeWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShow()V
    .locals 12

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/AdNative$2;->this$0:Lcn/haorui/sdk/adsail_ad/AdNative;

    invoke-static {v0}, Lcn/haorui/sdk/adsail_ad/AdNative;->access$200(Lcn/haorui/sdk/adsail_ad/AdNative;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcn/haorui/sdk/R$layout;->adsail_splash_ad_layout:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcn/haorui/sdk/adsail_ad/splash/HRSplashRootView;

    new-instance v9, Lz2/o000;

    invoke-direct {v9, v1}, Lz2/o000;-><init>(Landroid/view/View;)V

    iget-object v3, p0, Lcn/haorui/sdk/adsail_ad/AdNative$2;->this$0:Lcn/haorui/sdk/adsail_ad/AdNative;

    iget-object v6, p0, Lcn/haorui/sdk/adsail_ad/AdNative$2;->val$adSlot:Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot;

    iget-object v7, p0, Lcn/haorui/sdk/adsail_ad/AdNative$2;->val$nativeAd:Lcn/haorui/sdk/adsail_ad/splash/SplashAdImpl;

    iget-object v8, p0, Lcn/haorui/sdk/adsail_ad/AdNative$2;->val$adListener:Lcn/haorui/sdk/adsail_ad/splash/ISplashAdListener;

    move-object v4, v9

    move-object v5, v1

    invoke-static/range {v3 .. v8}, Lcn/haorui/sdk/adsail_ad/AdNative;->access$300(Lcn/haorui/sdk/adsail_ad/AdNative;Lz2/o000;Lcn/haorui/sdk/adsail_ad/splash/HRSplashRootView;Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot;Lcn/haorui/sdk/adsail_ad/splash/SplashAdImpl;Lcn/haorui/sdk/adsail_ad/splash/ISplashAdListener;)V

    iget-object v3, p0, Lcn/haorui/sdk/adsail_ad/AdNative$2;->val$nativeAd:Lcn/haorui/sdk/adsail_ad/splash/SplashAdImpl;

    invoke-virtual {v3, v1}, Lcn/haorui/sdk/adsail_ad/splash/SplashAdImpl;->setAdRoot(Lcn/haorui/sdk/adsail_ad/splash/HRSplashRootView;)V

    iget-object v3, p0, Lcn/haorui/sdk/adsail_ad/AdNative$2;->val$adSlot:Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot;

    invoke-virtual {v3}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getDrawing()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_3

    new-instance v0, Lcn/haorui/sdk/core/view/DownloadView;

    invoke-direct {v0}, Lcn/haorui/sdk/core/view/DownloadView;-><init>()V

    iget-object v2, p0, Lcn/haorui/sdk/adsail_ad/AdNative$2;->val$adSlot:Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot;

    invoke-virtual {v0, v1, v2}, Lcn/haorui/sdk/core/view/DownloadView;->handleDownloadView(Landroid/view/View;Lcn/haorui/sdk/core/ad/BaseAdSlot;)V

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/AdNative$2;->val$adSlot:Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot;

    invoke-virtual {v0}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getAdPatternType()I

    move-result v0

    if-eq v0, v4, :cond_2

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/AdNative$2;->val$adSlot:Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot;

    invoke-virtual {v0}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getAdPatternType()I

    move-result v0

    const/16 v2, 0xc

    if-eq v0, v2, :cond_2

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/AdNative$2;->val$adSlot:Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot;

    invoke-virtual {v0}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getAdPatternType()I

    move-result v0

    const/16 v2, 0xb

    if-eq v0, v2, :cond_2

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/AdNative$2;->val$adSlot:Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot;

    invoke-virtual {v0}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getAdPatternType()I

    move-result v0

    const/16 v2, 0xd

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/AdNative$2;->val$adSlot:Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot;

    invoke-virtual {v0}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getAdPatternType()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    iget-object v3, p0, Lcn/haorui/sdk/adsail_ad/AdNative$2;->this$0:Lcn/haorui/sdk/adsail_ad/AdNative;

    iget-object v4, p0, Lcn/haorui/sdk/adsail_ad/AdNative$2;->val$adListener:Lcn/haorui/sdk/adsail_ad/splash/ISplashAdListener;

    iget-object v5, p0, Lcn/haorui/sdk/adsail_ad/AdNative$2;->val$adSlot:Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot;

    iget-object v6, p0, Lcn/haorui/sdk/adsail_ad/AdNative$2;->val$nativeAd:Lcn/haorui/sdk/adsail_ad/splash/SplashAdImpl;

    iget-boolean v0, p0, Lcn/haorui/sdk/adsail_ad/AdNative$2;->val$autoShow:Z

    iget-object v10, p0, Lcn/haorui/sdk/adsail_ad/AdNative$2;->val$customSkipButton:Landroid/view/View;

    iget-object v2, p0, Lcn/haorui/sdk/adsail_ad/AdNative$2;->val$wrapper:Lcn/haorui/sdk/platform/hr/splash/HRHRAdNativeWrapper;

    invoke-virtual {v2}, Lcn/haorui/sdk/platform/BasePlatformLoader;->getAdLoader()Lcn/haorui/sdk/core/loader/b;

    move-result-object v2

    check-cast v2, Lcn/haorui/sdk/core/ad/splash/SplashAdLoader;

    invoke-virtual {v2}, Lcn/haorui/sdk/core/ad/splash/SplashAdLoader;->getVideoIsMute()Z

    move-result v11

    move-object v7, v1

    move-object v8, v9

    move v9, v0

    invoke-static/range {v3 .. v11}, Lcn/haorui/sdk/adsail_ad/AdNative;->access$500(Lcn/haorui/sdk/adsail_ad/AdNative;Lcn/haorui/sdk/adsail_ad/splash/ISplashAdListener;Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot;Lcn/haorui/sdk/adsail_ad/splash/SplashAdImpl;Lcn/haorui/sdk/adsail_ad/splash/HRSplashRootView;Lz2/o000;ZLandroid/view/View;Z)V

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unsupported type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/haorui/sdk/adsail_ad/AdNative$2;->val$adSlot:Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot;

    invoke-virtual {v1}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getAdPatternType()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AdNative"

    invoke-static {v1, v0}, Lcn/haorui/sdk/core/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/AdNative$2;->this$0:Lcn/haorui/sdk/adsail_ad/AdNative;

    iget-object v1, p0, Lcn/haorui/sdk/adsail_ad/AdNative$2;->val$adListener:Lcn/haorui/sdk/adsail_ad/splash/ISplashAdListener;

    sget-object v2, Lcn/haorui/sdk/core/exception/a;->c:Ljava/lang/Integer;

    const-string v3, "unsupported type"

    invoke-static {v0, v1, v3, v2}, Lcn/haorui/sdk/adsail_ad/AdNative;->access$000(Lcn/haorui/sdk/adsail_ad/AdNative;Lcn/haorui/sdk/adsail_ad/IAdListener;Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_1

    :cond_2
    :goto_0
    iget-object v3, p0, Lcn/haorui/sdk/adsail_ad/AdNative$2;->this$0:Lcn/haorui/sdk/adsail_ad/AdNative;

    iget-object v4, p0, Lcn/haorui/sdk/adsail_ad/AdNative$2;->val$adListener:Lcn/haorui/sdk/adsail_ad/splash/ISplashAdListener;

    iget-object v5, p0, Lcn/haorui/sdk/adsail_ad/AdNative$2;->val$adSlot:Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot;

    iget-object v6, p0, Lcn/haorui/sdk/adsail_ad/AdNative$2;->val$nativeAd:Lcn/haorui/sdk/adsail_ad/splash/SplashAdImpl;

    iget-boolean v0, p0, Lcn/haorui/sdk/adsail_ad/AdNative$2;->val$autoShow:Z

    iget-object v10, p0, Lcn/haorui/sdk/adsail_ad/AdNative$2;->val$customSkipButton:Landroid/view/View;

    move-object v7, v1

    move-object v8, v9

    move v9, v0

    invoke-static/range {v3 .. v10}, Lcn/haorui/sdk/adsail_ad/AdNative;->access$400(Lcn/haorui/sdk/adsail_ad/AdNative;Lcn/haorui/sdk/adsail_ad/splash/ISplashAdListener;Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot;Lcn/haorui/sdk/adsail_ad/splash/SplashAdImpl;Lcn/haorui/sdk/adsail_ad/splash/HRSplashRootView;Lz2/o000;ZLandroid/view/View;)V

    goto :goto_1

    :cond_3
    sget v1, Lcn/haorui/sdk/R$layout;->adsail_layout_native_splash:I

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcn/haorui/sdk/adsail_ad/splash/HRSplashRootView;

    iget-object v1, p0, Lcn/haorui/sdk/adsail_ad/AdNative$2;->this$0:Lcn/haorui/sdk/adsail_ad/AdNative;

    iget-object v2, p0, Lcn/haorui/sdk/adsail_ad/AdNative$2;->val$adListener:Lcn/haorui/sdk/adsail_ad/splash/ISplashAdListener;

    iget-object v3, p0, Lcn/haorui/sdk/adsail_ad/AdNative$2;->val$adSlot:Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot;

    iget-object v4, p0, Lcn/haorui/sdk/adsail_ad/AdNative$2;->val$nativeAd:Lcn/haorui/sdk/adsail_ad/splash/SplashAdImpl;

    iget-boolean v6, p0, Lcn/haorui/sdk/adsail_ad/AdNative$2;->val$autoShow:Z

    iget-object v7, p0, Lcn/haorui/sdk/adsail_ad/AdNative$2;->val$customSkipButton:Landroid/view/View;

    invoke-static/range {v1 .. v7}, Lcn/haorui/sdk/adsail_ad/AdNative;->access$600(Lcn/haorui/sdk/adsail_ad/AdNative;Lcn/haorui/sdk/adsail_ad/splash/ISplashAdListener;Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot;Lcn/haorui/sdk/adsail_ad/splash/SplashAdImpl;Lcn/haorui/sdk/adsail_ad/splash/HRSplashRootView;ZLandroid/view/View;)V

    :goto_1
    return-void
.end method
