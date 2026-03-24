.class public Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView$13;
.super Landroid/content/BroadcastReceiver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;


# direct methods
.method public constructor <init>(Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView$13;->this$0:Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    iget-object p1, p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView$13;->this$0:Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView$13;->this$0:Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;

    invoke-static {p2}, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->access$2500(Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;)Lcn/haorui/sdk/adsail_ad/nativ/NativeAdData;

    move-result-object p2

    invoke-static {p1, p2}, Lcn/haorui/sdk/core/utils/ClickHandler;->gotoDownload(Landroid/content/Context;Lcn/haorui/sdk/platform/hr/IAdSailAd;)V

    invoke-static {}, Lcn/haorui/sdk/core/utils/ClickHandler;->clearShowDialogActivity()V

    return-void
.end method
