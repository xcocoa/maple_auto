.class public Lcn/haorui/sdk/adsail_ad/interstitial/InterstitialAdSlot$InterstitialBuilder;
.super Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/haorui/sdk/adsail_ad/interstitial/InterstitialAdSlot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "InterstitialBuilder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder<",
        "Lcn/haorui/sdk/adsail_ad/interstitial/InterstitialAdSlot$InterstitialBuilder;",
        "Lcn/haorui/sdk/adsail_ad/interstitial/InterstitialAdSlot;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcn/haorui/sdk/adsail_ad/interstitial/InterstitialAdSlot;


# direct methods
.method public constructor <init>(Lcn/haorui/sdk/adsail_ad/interstitial/InterstitialAdSlot;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/adsail_ad/interstitial/InterstitialAdSlot$InterstitialBuilder;->this$0:Lcn/haorui/sdk/adsail_ad/interstitial/InterstitialAdSlot;

    invoke-direct {p0, p1}, Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;-><init>(Lcn/haorui/sdk/core/ad/BaseAdSlot;)V

    return-void
.end method


# virtual methods
.method public build()Lcn/haorui/sdk/adsail_ad/interstitial/InterstitialAdSlot;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/interstitial/InterstitialAdSlot$InterstitialBuilder;->this$0:Lcn/haorui/sdk/adsail_ad/interstitial/InterstitialAdSlot;

    return-object v0
.end method

.method public bridge synthetic build()Lcn/haorui/sdk/core/ad/BaseAdSlot;
    .locals 1

    invoke-virtual {p0}, Lcn/haorui/sdk/adsail_ad/interstitial/InterstitialAdSlot$InterstitialBuilder;->build()Lcn/haorui/sdk/adsail_ad/interstitial/InterstitialAdSlot;

    move-result-object v0

    return-object v0
.end method

.method public returnThis()Lcn/haorui/sdk/adsail_ad/interstitial/InterstitialAdSlot$InterstitialBuilder;
    .locals 0

    return-object p0
.end method

.method public bridge synthetic returnThis()Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;
    .locals 1

    invoke-virtual {p0}, Lcn/haorui/sdk/adsail_ad/interstitial/InterstitialAdSlot$InterstitialBuilder;->returnThis()Lcn/haorui/sdk/adsail_ad/interstitial/InterstitialAdSlot$InterstitialBuilder;

    move-result-object v0

    return-object v0
.end method

.method public setActionText(Ljava/lang/String;)Lcn/haorui/sdk/adsail_ad/interstitial/InterstitialAdSlot$InterstitialBuilder;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/interstitial/InterstitialAdSlot$InterstitialBuilder;->this$0:Lcn/haorui/sdk/adsail_ad/interstitial/InterstitialAdSlot;

    iput-object p1, v0, Lcn/haorui/sdk/adsail_ad/interstitial/InterstitialAdSlot;->actionText:Ljava/lang/String;

    return-object p0
.end method

.method public setHeight(I)Lcn/haorui/sdk/adsail_ad/interstitial/InterstitialAdSlot$InterstitialBuilder;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/interstitial/InterstitialAdSlot$InterstitialBuilder;->this$0:Lcn/haorui/sdk/adsail_ad/interstitial/InterstitialAdSlot;

    invoke-static {v0, p1}, Lcn/haorui/sdk/adsail_ad/interstitial/InterstitialAdSlot;->access$102(Lcn/haorui/sdk/adsail_ad/interstitial/InterstitialAdSlot;I)I

    return-object p0
.end method

.method public setInsertStyle(I)Lcn/haorui/sdk/adsail_ad/interstitial/InterstitialAdSlot$InterstitialBuilder;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/interstitial/InterstitialAdSlot$InterstitialBuilder;->this$0:Lcn/haorui/sdk/adsail_ad/interstitial/InterstitialAdSlot;

    invoke-static {v0, p1}, Lcn/haorui/sdk/adsail_ad/interstitial/InterstitialAdSlot;->access$202(Lcn/haorui/sdk/adsail_ad/interstitial/InterstitialAdSlot;I)I

    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Lcn/haorui/sdk/adsail_ad/interstitial/InterstitialAdSlot$InterstitialBuilder;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/interstitial/InterstitialAdSlot$InterstitialBuilder;->this$0:Lcn/haorui/sdk/adsail_ad/interstitial/InterstitialAdSlot;

    iput-object p1, v0, Lcn/haorui/sdk/adsail_ad/interstitial/InterstitialAdSlot;->title:Ljava/lang/String;

    return-object p0
.end method

.method public bridge synthetic setTitle(Ljava/lang/String;)Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;
    .locals 0

    invoke-virtual {p0, p1}, Lcn/haorui/sdk/adsail_ad/interstitial/InterstitialAdSlot$InterstitialBuilder;->setTitle(Ljava/lang/String;)Lcn/haorui/sdk/adsail_ad/interstitial/InterstitialAdSlot$InterstitialBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setWidth(I)Lcn/haorui/sdk/adsail_ad/interstitial/InterstitialAdSlot$InterstitialBuilder;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/interstitial/InterstitialAdSlot$InterstitialBuilder;->this$0:Lcn/haorui/sdk/adsail_ad/interstitial/InterstitialAdSlot;

    invoke-static {v0, p1}, Lcn/haorui/sdk/adsail_ad/interstitial/InterstitialAdSlot;->access$002(Lcn/haorui/sdk/adsail_ad/interstitial/InterstitialAdSlot;I)I

    return-object p0
.end method
