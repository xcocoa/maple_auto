.class public Lcn/haorui/sdk/platform/ms/splash/HrCustomSplashAd;
.super Lcom/meishu/sdk/platform/custom/splash/MsCustomSplashAd;
.source ""


# instance fields
.field private iSplashAd:Lcn/haorui/sdk/core/ad/splash/ISplashAd;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/platform/custom/splash/MsCustomSplashAdapter;Lcn/haorui/sdk/core/ad/splash/ISplashAd;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/meishu/sdk/platform/custom/splash/MsCustomSplashAd;-><init>(Lcom/meishu/sdk/platform/custom/splash/MsCustomSplashAdapter;)V

    iput-object p2, p0, Lcn/haorui/sdk/platform/ms/splash/HrCustomSplashAd;->iSplashAd:Lcn/haorui/sdk/core/ad/splash/ISplashAd;

    return-void
.end method


# virtual methods
.method public showAd(Landroid/view/ViewGroup;)V
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/platform/ms/splash/HrCustomSplashAd;->iSplashAd:Lcn/haorui/sdk/core/ad/splash/ISplashAd;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcn/haorui/sdk/core/ad/splash/ISplashAd;->showAd(Landroid/view/ViewGroup;)V

    :cond_0
    return-void
.end method
