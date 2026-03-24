.class public Lcn/haorui/sdk/platform/hr/fullscreenvideo/HRFullScreenVideoHRAdWrapper$1;
.super Lcn/haorui/sdk/platform/hr/reward/AdListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/haorui/sdk/platform/hr/fullscreenvideo/HRFullScreenVideoHRAdWrapper;->loadAd()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcn/haorui/sdk/platform/hr/fullscreenvideo/HRFullScreenVideoHRAdWrapper;


# direct methods
.method public constructor <init>(Lcn/haorui/sdk/platform/hr/fullscreenvideo/HRFullScreenVideoHRAdWrapper;Lcn/haorui/sdk/platform/hr/HRAdLoader;Lcn/haorui/sdk/core/loader/IAdLoadListener;Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/platform/hr/fullscreenvideo/HRFullScreenVideoHRAdWrapper$1;->this$0:Lcn/haorui/sdk/platform/hr/fullscreenvideo/HRFullScreenVideoHRAdWrapper;

    invoke-direct {p0, p2, p3, p4}, Lcn/haorui/sdk/platform/hr/reward/AdListenerAdapter;-><init>(Lcn/haorui/sdk/platform/hr/HRAdLoader;Lcn/haorui/sdk/core/loader/IAdLoadListener;Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;)V

    return-void
.end method


# virtual methods
.method public getResponUrl()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/fullscreenvideo/HRFullScreenVideoHRAdWrapper$1;->this$0:Lcn/haorui/sdk/platform/hr/fullscreenvideo/HRFullScreenVideoHRAdWrapper;

    invoke-static {v0}, Lcn/haorui/sdk/platform/hr/fullscreenvideo/HRFullScreenVideoHRAdWrapper;->access$000(Lcn/haorui/sdk/platform/hr/fullscreenvideo/HRFullScreenVideoHRAdWrapper;)Lcn/haorui/sdk/core/ad/AdSlot;

    move-result-object v0

    check-cast v0, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;

    invoke-virtual {v0}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getResponUrl()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
