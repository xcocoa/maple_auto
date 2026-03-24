.class public Lcn/haorui/sdk/platform/ms/fullscreen/HrCustomFullScreenAd;
.super Lcom/meishu/sdk/platform/custom/fullscreen/MsCustomFullScreenAd;
.source ""


# instance fields
.field private iFullScreenVideoAd:Lcn/haorui/sdk/core/ad/fullscreenvideo/IFullScreenVideoAd;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/platform/custom/fullscreen/MsCustomFullScreenAdapter;Lcn/haorui/sdk/core/ad/fullscreenvideo/IFullScreenVideoAd;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/meishu/sdk/platform/custom/fullscreen/MsCustomFullScreenAd;-><init>(Lcom/meishu/sdk/platform/custom/fullscreen/MsCustomFullScreenAdapter;)V

    iput-object p2, p0, Lcn/haorui/sdk/platform/ms/fullscreen/HrCustomFullScreenAd;->iFullScreenVideoAd:Lcn/haorui/sdk/core/ad/fullscreenvideo/IFullScreenVideoAd;

    return-void
.end method


# virtual methods
.method public showAd(Landroid/app/Activity;)V
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/platform/ms/fullscreen/HrCustomFullScreenAd;->iFullScreenVideoAd:Lcn/haorui/sdk/core/ad/fullscreenvideo/IFullScreenVideoAd;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcn/haorui/sdk/core/ad/fullscreenvideo/IFullScreenVideoAd;->showAd(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method
